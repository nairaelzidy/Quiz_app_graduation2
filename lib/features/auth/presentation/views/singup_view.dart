import 'package:final_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const routeName="signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  BuildappBar(context, titile: "حساب جديد"),
      body:SignupViewBody() ,
    );
  }
}