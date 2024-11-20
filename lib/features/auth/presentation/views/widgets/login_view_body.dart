import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_images.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/core/widgets/customTextFormField.dart';
import 'package:final_fruit_app/core/widgets/custom_button.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/dont_have_acont.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoinViewBody extends StatelessWidget {
   LoinViewBody({super.key});
final TextStyle? customTextStyle = TextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomTextFormField(
                hintText: "البريد الالكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              const CustomTextFormField(
                hintText: "كلمة المرور",
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xffC9CECF),),
              ),
             const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "نسيت كلمة المرور",
                    style: customTextStyle,
                  ),
                ],
              ),
             const SizedBox(height: 33,),
             CustomButton(onPressed: (){}, text: "تسجيل الدخول"),
             const SizedBox(height: 33,),
             const dontHaveAnAcount(),
             SizedBox(height: 33,),
             const OrDivider(),
            const SizedBox(height: 16),
             SocialLoginButton(image: Assets.imagesGoogleIcon, title: "تسجيل بواسطة جوجل", onPressed: (){}),
              const SizedBox(height: 16,),
              SocialLoginButton(image: Assets.imagesAppIcon, title: "تسجيل بواسطة ابل", onPressed: (){}),
               const SizedBox(height: 16,),
               SocialLoginButton(image: Assets.imagesFacebookIcon, title: "تسجيل بواسطة فيسبوك", onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}

