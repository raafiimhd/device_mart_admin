import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class DashboardWidgets extends StatelessWidget {
  const DashboardWidgets(
      {super.key,
      required this.icon,
      required this.name,
      required this.circleColor});

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
