import 'package:device_mart/application/bussines_logic/bloc/auth/auth_bloc.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/application/presentation/routes/routes.dart';
import 'package:device_mart/application/presentation/widgets/custom_elevated_button/custom_elevated_button.dart';
import 'package:device_mart/application/presentation/widgets/custom_text_fields.dart';
import 'package:device_mart/application/presentation/widgets/message_snackbar/message_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signin = context.read<AuthBloc>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Hero(
            tag: 'test',
            child: Container(
              constraints: BoxConstraints(maxWidth: size.width * 0.8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: signin.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LottieBuilder.asset('assets/lottie_jsons/Sign_in.json',
                            height: size.width * 0.5),
                        Material(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        kHeightTen,
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          hintText: 'username',
                          controller: signin.usernameController,
                          prefixIcon: Iconsax.user,
                        ),
                        kHeightFive,
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          hintText: 'Password',
                          controller: signin.passwordController,
                          prefixIcon: Iconsax.lock,
                          isPassword: true,
                        ),
                        BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state.message != null) {
                              if (state.message == 'Login success') {
                                messageSnackbar(
                                    context: context,
                                    message: state.message!,
                                    isError: false);
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  Routes.mainpage,
                                  (route) => false,
                                );
                              } else if (state.hasError) {
                                messageSnackbar(
                                  context: context,
                                  message: state.message!,
                                  isError: true,
                                );
                              }
                            }
                          },
                          builder: (context, state) {
                            if (state.isLoading) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: LoadingAnimationWidget.inkDrop(
                                      color: kWhite, size: 25),
                                ),
                              );
                            }
                            return CustomElevatedButton(
                              buttonLabel: "Sign In",
                              onPressed: () {
                                if (signin.formKey.currentState!.validate()) {
                                  signin.add(const SignIn());
                                }
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
