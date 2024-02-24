import 'package:device_mart/application/presentation/home/widget/list_tile_widget.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/sales_report/sales_report.dart';
import 'package:flutter/material.dart';

class SalesReportList extends StatelessWidget {
  const SalesReportList({Key? key, required this.salesReport}) : super(key: key);

  final SalesReport salesReport;

  @override
  Widget build(BuildContext context) {
    final report = salesReport.data;

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              color: sColor,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Date: ${report!.date}',
                  style: kronOne(color: kWhite),
                ),
                Text(
                  'Report Date: ${report.reportFrom}',
                  style: subHeading(),
                ),
                kHeight100,
                Text(
                  'Total Sales',
                  style: kronOne(color: kWhite),
                ),
                Text(
                  '₹${report.totalRevenue!}',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeightTwenty,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 222, 221, 221),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: kWhite,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          kHeight30,
                          Text(
                            'Top Sales Count',
                            style: subHeading(color: sColor),
                          ),
                          kHeightTen,
                          Text('${report.totalSalesCount}',
                          style: kronOne(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 222, 221, 221),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: kWhite,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          kHeight30,
                          Text(
                            'Avg Order Value',
                            style: subHeading(color: sColor),
                          ),
                          kHeightTen,
                          Text('Rs:${report.averageOrderValue}',
                          style: kronOne(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ListTileWidget(title: 'Top Selling Brand', subTitle: report.topSellingBrand!, icon: Icons.category),
                ListTileWidget(title: 'Top Selling Product', subTitle: report.topSellingProduct!, icon: Icons.inventory),
                ListTileWidget(title: 'Top Quntity Sold', subTitle: report.totalQuantitySold!.toString(), icon: Icons.production_quantity_limits),
                ListTileWidget(title: 'Total Coupon Incentive', subTitle: report.totalCouponIncentive.toString(), icon: Icons.discount),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
