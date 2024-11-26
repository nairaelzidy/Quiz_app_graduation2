import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key});

  @override
  State<TermsAndConditionWidget> createState() => _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
bool isTermsAcceptted=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      CustomCheckBox(
        onChecked: (value){
          isTermsAcceptted=value;
          setState(() {
            
          });

        },
        isChecked: isTermsAcceptted,),
       const SizedBox(width: 16,),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By creating an account.  You agree to me.',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'Our Terms and Conditions',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
               
              ],
            ),
          ),
        ),
      ],
    );
  }
}
