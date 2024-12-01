import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:final_fruit_app/features/auth/presentation/views/singup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAcountWidget extends StatelessWidget {
  const HaveAnAcountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
     TextSpan(children: [
       TextSpan(
         text: "You already have an account ?",
         style: TextStyles.semiBold16.copyWith(color:const Color(0xFF616A6B)),
       ),
       TextSpan(
        recognizer: TapGestureRecognizer()..onTap = (){
          Navigator.pop(context);
        },
       text:  " Sign in" ,
       style: TextStyles.semiBold16.copyWith(color:AppColors.primaryColor)
    
       )
     ])
    );
  }
}
