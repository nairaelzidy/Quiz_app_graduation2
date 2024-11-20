import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildappBar(titile: "تسجيل الدخول",context),
      body:  LoinViewBody(),
    );
  }

 
}
