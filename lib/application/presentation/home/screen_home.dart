import 'package:device_mart/application/bussines_logic/bloc/sales_report/report_bloc.dart';
import 'package:device_mart/application/presentation/home/widget/sale_report.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ReportBloc>().add(const ReportEvent.salesReport());
    });
    return Scaffold(
      backgroundColor: kWhite,
      body: BlocConsumer<ReportBloc, ReportState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
          } else if (state.salesReport != null &&
              state.salesReport!.data != null) {
            return SalesReportList(
              salesReport: state.salesReport!,
            );
          } else {
            return Center(
              child: Text('No sales report available'),
            );
          }
        },
      ),
    );
  }
}
