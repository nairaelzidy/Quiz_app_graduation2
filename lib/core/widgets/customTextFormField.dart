import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, 
  required this.textInputType, this.suffixIcon, this.onSaved,  this.obscureText= false});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
   final void Function(String?)? onSaved;
   final bool obscureText ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "this field is requiered";
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.bold13.copyWith(color:const Color(0xFF949D9E)),
        filled: true,
        fillColor:const Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder()

      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: Color(0xFFE6E9E9),
          width: 1
        )
      );
  }
}