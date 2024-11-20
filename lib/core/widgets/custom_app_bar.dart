 import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

AppBar BuildappBar(context,{required String titile}) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
      centerTitle: true,
      title:  Text(
       titile,
        textAlign: TextAlign.center,
        style: TextStyles.bold19,
      ),
    );
  }