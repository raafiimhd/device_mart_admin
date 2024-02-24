import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomProductTextFormFieldWidget extends StatelessWidget {
  const CustomProductTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
  });
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            color: kWhite,
            child: TextFormField(
              keyboardType: keyboardType,
              maxLines: maxlines,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill $hintText';
                } else {
                  return null;
                }
              },
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                contentPadding: const EdgeInsets.all(5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )));
  }
}
