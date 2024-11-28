import 'dart:math';

import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_images.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/core/widgets/customTextFormField.dart';
import 'package:final_fruit_app/core/widgets/custom_button.dart';
import 'package:final_fruit_app/core/widgets/password_field.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/dont_have_acont.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:final_fruit_app/features/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatefulWidget {
  SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final TextStyle? customTextStyle =
      TextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor);
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget your password ?",
                    style: customTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().signin(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: "Sign in"),
              const SizedBox(
                height: 33,
              ),
              const dontHaveAnAcount(),
              const SizedBox(
                height: 33,
              ),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                  image: Assets.imagesGoogleIcon,
                  title: "Sign in with Google",
                  onPressed: () {
                    context.read<SigninCubit>().signinWithGoogle();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  }),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
