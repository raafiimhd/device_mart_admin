import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.icon, required this.title, required this.subTitle});
  final IconData icon;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
          child: ListTile(
            leading:Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                color: sColor, 
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Icon(icon),
              ),
            ),
            title: Text(title,
            style: subHeading(color: kBlue),),
          subtitle: Text(subTitle,
          style: kronOne(),),
          ),
        ),
      ),
    );
  }
}
