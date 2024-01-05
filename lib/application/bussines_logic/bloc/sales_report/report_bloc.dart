import 'package:bloc/bloc.dart';
import 'package:device_mart/data/data_provider/sales_report_provider/sales_report_provider.dart';
import 'package:device_mart/domain/core/repositories/report_repositories/report_repositories.dart';
import 'package:device_mart/domain/models/report/sales_report_resp_model/sales_report_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';
@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  SalesReportRepository salesReportRepository;
  final SalesReportProvider salesReportProvider =
      SalesReportProvider(Dio(), const FlutterSecureStorage());
  ReportBloc(this.salesReportRepository) : super(ReportState.initial()) {
    on<SalesReport>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await salesReportRepository.salesReport();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message:failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false, isLoading: false, salesReportRespModel: resp,message: resp.message)));
    });
  }
}
