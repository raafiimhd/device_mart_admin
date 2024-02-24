part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      SalesReport?salesReport}) = _initial;
  factory ReportState.initial() => const ReportState(
        hasError: false,
        isLoading: false,
      );
}
