import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/features/auth/presentation/views/singup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class dontHaveAnAcount extends StatelessWidget {
  const dontHaveAnAcount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
     TextSpan(children: [
       TextSpan(
         text: "لاتمتلك حساب ؟",
         style: TextStyles.semiBold16.copyWith(color:const Color(0xFF616A6B)),
       ),
       TextSpan(
        recognizer: TapGestureRecognizer()..onTap = (){
          Navigator.pushNamed(context, SignupView.routeName);
        },
       text:   " قم بآنشاء حساب",
       style: TextStyles.semiBold16.copyWith(color:AppColors.primaryColor)
    
       )
     ])
    );
  }
}
