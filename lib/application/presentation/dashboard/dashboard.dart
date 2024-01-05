import 'package:device_mart/application/presentation/widgets/dashboard_widgets/dashbord_widgets.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ScreenDashBoard extends StatelessWidget {
  const ScreenDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppbar(
              title: 'Dashboard',
            )),
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: const DashboardWidgets(
                    icon: Iconsax.category,
                    name: 'All Brands',
                    circleColor: Color.fromARGB(255, 142, 96, 222),
                  ),
                  onTap: () =>
                      Navigator.of(context).pushNamed('/brands'),
                ),
                InkWell(
                  child: const DashboardWidgets(
                    icon: Iconsax.box,
                    name: 'All Products',
                    circleColor: Color.fromARGB(255, 146, 113, 124),
                  ),
                  onTap: () =>
                    Navigator.of(context).pushNamed('/products'),
                  
                ),
                 InkWell(
                  child: const DashboardWidgets(
                      icon: Iconsax.user,
                      name: 'User',
                      circleColor: Colors.orange),
                      onTap: () => Navigator.of(context).pushNamed('/user'),
                ),
              ],
            ),
          ]
        ));
  }
}
