import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class DashboardWidgets extends StatelessWidget {
  const DashboardWidgets({super.key, 
  required this.icon,
  required this.name,
  required this.circleColor
  });

  final IconData icon;
  final String name;
  final Color circleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25),
          child: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kWhite,
            ),
            child: Column(
              children: [
                kHeightTwenty,
                ClipOval(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: circleColor,
                    child: Icon(
                      icon,
                      color: kBlack,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    name,
                    style: const TextStyle(
                        color: kBlack, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
