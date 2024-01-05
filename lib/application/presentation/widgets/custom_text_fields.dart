import 'package:device_mart/application/bussines_logic/bloc/auth/auth_bloc.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
    this.isPassword = false,
  });
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final signupBloc = context.read<AuthBloc>();
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            color: kWhite,
            child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              return TextFormField(
                //  autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: keyboardType,
                maxLines: isPassword ? 1 : maxlines,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill $hintText';
                  } else if (isPassword &&
                      value != signupBloc.passwordController.text) {
                    return 'Passwords do not match';
                  } else {
                    return null;
                  }
                },
                obscureText: isPassword ? state.obscure : false,

                // style: kronOne(),
                controller: controller,
                decoration: InputDecoration(
                  suffix: isPassword
                      ? IconButton(
                          icon: Icon(
                            state.obscure ? Icons.remove_red_eye : Iconsax.eye,
                            color: kBlack,
                          ),
                          onPressed: () {
                            signupBloc.add(const AuthEvent.obsecure());
                          },
                        )
                      : null,
                  hintText: hintText,
                  prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                  contentPadding: const EdgeInsets.all(5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              );
            })));
  }
}
