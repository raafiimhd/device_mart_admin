import 'package:device_mart/application/bussines_logic/bloc/auth/auth_bloc.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final signupBloc = context.read<AuthBloc>();

    return Container(
      color: kWhite,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return TextFormField(
            keyboardType: keyboardType,
           
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
            controller: controller,
            decoration: InputDecoration(
               focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
            color: kBlack
          )
          ),
              hintText: hintText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              contentPadding: EdgeInsets.zero, 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              suffix: isPassword
                  ? IconButton(
                      icon: Icon(
                        state.obscure ? Icons.remove_red_eye : Iconsax.eye,
                        color: kBlack,
                        size: 15,
                      ),
                      onPressed: () {
                        signupBloc.add(const AuthEvent.obsecure());
                      },
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
