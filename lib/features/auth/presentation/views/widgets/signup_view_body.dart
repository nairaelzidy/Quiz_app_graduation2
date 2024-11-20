import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/widgets/customTextFormField.dart';
import 'package:final_fruit_app/core/widgets/custom_button.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24,),
            const CustomTextFormField(
                hintText: "الاسم بالكام", textInputType: TextInputType.name),
                const SizedBox(height: 16,),
            const CustomTextFormField(
                hintText: "البريد الاكتروني",
                textInputType: TextInputType.emailAddress),
                const SizedBox(height: 16,),
            const CustomTextFormField(
              hintText: "كلمة المرور",
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xffC9CECF),),
            ),
            const SizedBox(height: 16,),
            const TermsAndConditionWidget(),
            const SizedBox(height: 30,),
            CustomButton(onPressed: (){}, text: "انشاء حساب جديد"),
            SizedBox(height: 26,),
            const HaveAnAcountWidget(),
          ],
        ),
      ),
    );
  }
}
