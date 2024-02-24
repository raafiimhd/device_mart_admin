import 'package:bloc/bloc.dart';
import 'package:device_mart/application/presentation/widgets/image_picker/image_picker.dart';
import 'package:device_mart/data/data_provider/inventory_provider/inventory_provider.dart';
import 'package:device_mart/domain/repositories/inventory_repositories/inventory_repositories.dart';
import 'package:device_mart/domain/models/image/image_model/image_model.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_image_qurrey_model/add_inventory_image_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_model.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_resp.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_qurrey/block_and_unblock_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_resp_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_management_resp_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_model/update_invetory_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_resp_model/update_inventory_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

@injectable
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productDesc = TextEditingController();
  final GlobalKey<FormState> inventoryKey = GlobalKey<FormState>();
  InventoryRepositery inventoryRepositery;
  final InventoryProvider inventoryProvider =
      InventoryProvider(Dio(), const FlutterSecureStorage());
  ImageModel? image;
  InventoryBloc(this.inventoryRepositery) : super(InventoryState.initial()) {
    on<GetInventoryCall>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isBlocked: false,
          isUnBlocked: false,
          message: null,
          getInventoryRespModel: null));
      final result = await inventoryProvider.getInventory(
          getResponseQurrey: event.getResponseQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message,
              isBlocked: false,
              isUnBlocked: false)),
          (resp) => emit(state.copyWith(
              hasError: false,
              getInventoryRespModel: resp,
              isLoading: false,
              isBlocked: false,
              isUnBlocked: false,
              message: resp.message)));
    });
    on<AddInventory>((event, emit) async {
      try {
        emit(state.copyWith(
            isLoading: true,
            isImageUploading: true,
            isBlocked: false,
            isUnBlocked: false));
        final result = await inventoryRepositery.addInventory(
            addInventoryModel: event.addInventoryModel);
        await result.fold((failure) => throw Exception('Something Error'),
            (resp) async {
          if (resp.statusCode == 200) {
            Map<String, dynamic> imageMap = {
              "product-image": state.imageModel!.multipartFile
            };
            final imageResult = await inventoryProvider.addProductImage(
                addInventoryImageQurreyModel:
                    AddInventoryImageQurreyModel(id: resp.data!.id),
                formData: FormData.fromMap(imageMap));
            imageResult.fold(
                (failure) => throw Exception('Something went wrong'), (resp) {
              emit(state.copyWith(
                  hasError: false,
                  isLoading: false,
                  isBlocked: false,
                  isUnBlocked: false,
                  isAdded: true,
                  message: resp.message,
                  addInventoryRespModel: resp));
            });
          }
        });
        closeAddController();
        add(GetInventoryCall(
            getResponseQurrey: GetResponseQurrey(page: 1, count: 30)));
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          isUnBlocked: false,
          isAdded: false,
          isBlocked: false,
          isChange: false,
          message: 'Something went wrong',
        ));
      }
    });
    on<postImages>((event, emit) async {
      image = await PickImage.getImageFromGallery();
      emit(state.copyWith(
          imageModel: image, isBlocked: false, isUnBlocked: false));
    });
    on<UpdateProduct>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, isBlocked: false, isUnBlocked: false));
      final result = await inventoryProvider.updateInventory(
          updateInventoryModel: event.updateInventoryModel);
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                isLoading: false,
                isBlocked: false,
                isUnBlocked: false,
                message: 'Can\nt update ',
                isUpdate: false,
              )), (resp) {
        emit(state.copyWith(
            hasError: false,
            isLoading: false,
            isBlocked: false,
            isUnBlocked: false,
            message: 'Updated Successfully',
            isUpdate: true,
            updateInventoryRespModel: resp));

        add(InventoryEvent.getInventoryCall(
            getResponseQurrey: GetResponseQurrey(page: 1, count: 30)));
      });
    });
    on<BlockProduct>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnBlocked: false,
          message: null));
      final result = await inventoryRepositery.blockInventory(
        blockAndUnblockQurrey: event.blockAndUnblockQurrey,
      );
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: failure.message));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: true,
          hasError: false,
          isUnBlocked: false,
          message: getUsersResponseModel.message,
        ));
        add(InventoryEvent.getInventoryCall(
            getResponseQurrey: GetResponseQurrey(page: 1, count: 30)));
      });
    });
    on<UnBlockProduct>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnBlocked: false,
          message: null));
      final result = await inventoryRepositery.unblockInventory(
        blockAndUnblockQurrey: event.blockAndUnblockQurrey,
      );
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          hasError: false,
          isUnBlocked: true,
          message: 'Unblocked Product successfully',
        ));
        add(InventoryEvent.getInventoryCall(
            getResponseQurrey: GetResponseQurrey(page: 1, count: 30)));
      });
    });
    on<GetManagement>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await inventoryRepositery.getManagement(
          getResponseQurrey: event.getResponseQurrey,
          getQurreyModel: event.getQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message,
              getManagementRespModel: null)),
          (resp) => emit(state.copyWith(
                isLoading: false,
                hasError: false,
                getManagementRespModel: resp,
                message: resp.message,
              )));
    });
    on<_SelectCatogory>((event, emit) {
      emit(state.copyWith(
          categoryId: event.selectedCatogory, catogory: event.catogory));
    });
  }
  void closeAddController() {
    productNameController.clear();
    productPriceController.clear();
    productDesc.clear();
  }
}
