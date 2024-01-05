import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.icon, required this.onPressed});
  final Icon icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kWhite,
      onPressed: onPressed,
    child: icon,);
  }
}
