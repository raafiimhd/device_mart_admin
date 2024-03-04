import 'package:bloc/bloc.dart';
import 'package:device_mart/application/presentation/widgets/image_picker/image_picker.dart';
import 'package:device_mart/data/data_provider/category_provider/category_provider.dart';
import 'package:device_mart/domain/repositories/category_repositories/category_repositories.dart';
import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_model/add_category_model.dart';
import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_resp_model/add_category_resp_model.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_and_unblock_resp_model/block_and_unblock_resp_model.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_category_model_qurrey/block_and_unblock_category_model_qurrey.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_qurrey_model/get_category_qurrey_model.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_resp_model/get_category_resp_model.dart';
import 'package:device_mart/domain/models/image/image_model/image_model.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_model/update_category_model.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_resp_model/update_category_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryRepository categoryRepository;
  final TextEditingController categoryController = TextEditingController();
  final GlobalKey<FormState> categoryKey = GlobalKey<FormState>();
  final Map<String, int> categoryMap = {};

  final CategoryProvider categoryProvider =
      CategoryProvider(Dio(), const FlutterSecureStorage());
  int? currentCategory;
  ImageModel? image;
  CategoryBloc(this.categoryRepository) : super(CategoryState.initial()) {
    on<GetCategory>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          networkImage: null,
          isAdding: false,
          isUnBlocked: false,
          hasError: false,
          isBlocked: false,
          message: null,
          getCatogereyResponseModel: null));

      final result = await categoryRepository.getCategory(
          getCategoryQurreyModel: event.getCategoryQurreyModel);
      result.fold(
        (failure) {
          emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isUnBlocked: false,
            isBlocked: false,
            isAdding: false,
            isChange: false,
            isDone: false,
            isupdating: false,
            message: failure.message,
          ));
        },
        (getCatogereyResponseModel) {
          categoryController.text = '';
          for (var cat in getCatogereyResponseModel.data!) {
            categoryMap[cat.categoryName] = cat.id;
          }
          return emit(state.copyWith(
            isLoading: false,
            isAdding: true,
            hasError: false,
            isUnBlocked: false,
            isBlocked: false,
            isDone: false,
            getCatogereyResponseModel: getCatogereyResponseModel,
            message: getCatogereyResponseModel.message,
            isupdating: false,
          ));
        },
      );
    });
    on<AddCategory>((event, emit) async {
      try {
        emit(state.copyWith(
            isLoading: true,
            isImageUploading: true,
            isBlocked: false,
            isUnBlocked: false));

        final result = await categoryRepository.addCategory(
          addCategoryModel: event.addCategoryModel,
        );

        await result.fold(
          (failure) => throw Exception('Something went wrong'),
          (resp) async {
            if (resp.statusCode == 200) {
              Map<String, dynamic> imageMap = {
                "category-image": state.imageModel!.multipartFile,
              };
              final imageResult = await categoryProvider.addCategoryImage(
                addCategoryModel: AddCategoryModel(id: resp.data!.id),
                formData: FormData.fromMap(imageMap),
              );

              imageResult.fold(
                (failure) => throw Exception('Something went wrong'),
                (resp) {
                  emit(state.copyWith(
                    addCategoryRespModel: resp,
                    isAdding: true,
                    isUnBlocked: false,
                    hasError: false,
                    isImageUploading: false,
                    isBlocked: false,
                    isChange: false,
                    message: resp.message,
                  ));
                },
              );
            }
          },
        );

        add(CategoryEvent.getCategory(
            getCategoryQurreyModel:
                GetCategoryQurreyModel(page: 1, count: 30)));
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          isUnBlocked: false,
          isBlocked: false,
          isAdding: false,
          isChange: false,
          message: 'Something went wrong',
        ));
      }
    });

    on<UpdateCategory>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isChange: false,
          isupdating: false,
          isUnBlocked: false,
          isBlocked: false,
          isAdding: false,
          message: null));
      final result = await categoryRepository.updateCategory(
          updateCategoryModel: event.updateCategoryModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
                hasError: true,
                isAdding: false,
                isChange: false,
                message: null,
                isUnBlocked: false,
                isBlocked: false,
                isDone: false,
                isupdating: false,
              )), (resp) {
        emit(state.copyWith(
            updateCategoryRespModel: resp,
            isUnBlocked: false,
            isBlocked: false,
            isDone: true,
            message: resp.message));
        add(CategoryEvent.getCategory(
            getCategoryQurreyModel:
                GetCategoryQurreyModel(page: 1, count: 30)));
      });
    });

    on<PickImages>((event, emit) async {
      image = await PickImage.getImageFromGallery();
      emit(state.copyWith(
          imageModel: image,
          isBlocked: false,
          isUnBlocked: false,
          isImageUploading: false));
    });
    // on<AddImage>((event, emit) async {
    //   emit(state.copyWith(isImageUploading: true));
    //   Map<String, dynamic> imageMap = {
    //     "category-image": state.imageModel!.multipartFile
    //   };
    //   final result = await categoryProvider.addCategoryImage(
    //       addCategoryModel: event.addCategoryModel,
    //       formData: FormData.fromMap(imageMap));

    //   result.fold(
    //       (failure) => emit(state.copyWith(
    //           hasError: true,
    //           message: 'Can\nt Added Image',
    //           isUnBlocked: false,
    //           isBlocked: false,
    //           isImageUploading: false)), (resp) {
    //     emit(state.copyWith(
    //         hasError: false,
    //         isImageUploading: false,
    //         message: 'Image Added Successfully',
    //         isAdding: true,
    //         isUnBlocked: false,
    //         isBlocked: false,
    //         imageModel: image));
    //          add(CategoryEvent.getCategory(getCategoryModel: GetCategoryModel()));
    //   });
    // });

    on<BlockCategory>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnBlocked: false,
          isChange: false,
          message: null));
      final result = await categoryRepository.blockCategory(
        blockAndUnblockCategoryModelQurrey: event.blockUnblockUserQurrey,
      );
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            isChange: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: failure.message));
      }, (resp) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: true,
          hasError: false,
          isUnBlocked: false,
          message: resp.message,
        ));
        add(CategoryEvent.getCategory(
            getCategoryQurreyModel:
                GetCategoryQurreyModel(page: 1, count: 30)));
      });
    });
    on<UnBlockCategory>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnBlocked: false,
          message: null));
      final result = await categoryRepository.unblockCategory(
        blockAndUnblockCategoryModelQurrey: event.blockUnblockUserQurrey,
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
          message: 'Unblocked Category successfully',
        ));
        add(CategoryEvent.getCategory(
            getCategoryQurreyModel:
                GetCategoryQurreyModel(page: 1, count: 30)));
      });
    });
  }
}
