import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.leading, required this.title,this.action, this.onPressed});
  final Widget? leading;
  final String title;
  final List<Widget>? action;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhite,
      leading: leading,
      centerTitle: true,
      title: Text(
        title,
        style:
            const TextStyle(fontSize: 25, color: kBlack, fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),
      ),
      actions: action,
    );
  }
}
