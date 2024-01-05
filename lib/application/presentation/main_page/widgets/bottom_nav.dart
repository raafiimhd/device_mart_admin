import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            currentIndex: newIndex,
            selectedItemColor: kBlack,
            unselectedItemColor: unSelectedColors,
            selectedIconTheme: const IconThemeData(
              color: kBlack,
            ),
            unselectedIconTheme: const IconThemeData(color: unSelectedColors),
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment), label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer), label: 'coupon'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ]);
      },
    );
  }
}
