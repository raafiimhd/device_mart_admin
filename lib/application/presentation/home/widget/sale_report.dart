import 'package:device_mart/application/bussines_logic/bloc/sales_report/report_bloc.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesReportScreen extends StatelessWidget {
  const SalesReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<ReportBloc, ReportState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      },
      builder: (context, state) {
        final List<Map<String, dynamic>> dummyData = [
          {
            'avgOrderValue': 'Dummy Avg Order Value',
            'date': 'Dummy Date',
            'reportFrom': 'Dummy Report From',
            'salesGrwthPer': 'Dummy Sales Growth Percentage',
            'topSelBrnd': 'Dummy Top Selling Brand',
            'topSelPrdct': 'Dummy Top Selling Product',
            'totalCpnInc': 'Dummy Total Coupon Incentive',
            'totalRevnue': 'Dummy Total Revenue',
            'count': 'Dummy Total Sales Count',
          }
        ];
        final List<Map<String, dynamic>> reports =
            (state.salesReportRespModel?.data) ?? dummyData;
    
        if (reports.isEmpty) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final report = reports[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kWhite,
                    ),
                    width: screenWidth,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text('Monthly Sales Report',
                            style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                          ),
                          const Divider(color: backgroundColor,),
                          Text(
                            'Average order value: ${report['avgOrderValue']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Date: ${report['date']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Report From: ${report['reportFrom']}',
                            style: kronOne(),
                          ),
                          Text(
                            'SalesGrowthPercentage: ${report['salesGrwthPer']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Top Selling Brand: ${report['topSelBrnd']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Top Selling Product: ${report['topSelPrdct']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Total Coupon Incentive: ${report['totalCpnInc']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Total Revenue: ${report['totalRevnue']}',
                            style: kronOne(),
                          ),
                          Text(
                            'Total Sales Count: ${report['count']}',
                            style: priceStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: reports.length,
            ),
          );
        }
      },
    );
  }
}
