import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/services/shared_preferencesingleton.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
     required this.isvisible});
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isvisible;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              // Positioned.fill(
              //   child: SvgPicture.asset(
              //     backgroundImage,
              //     fit: BoxFit.fill,
              //   ),
              // ),
              Positioned(
                bottom: 0,
                top: 20,
                left: 0,
                right: 0,
                child: Image.asset(image),
              ),
              Visibility(
                visible:isvisible ,
                child: GestureDetector(
                  onTap: (){
                     Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context).pushReplacementNamed(SigninView.routeName);
                  },
                  child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'Skip',
                          style: TextStyles.regular16.copyWith(
                            color: const Color(0xFF949D9E),
                          ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        )
     , const SizedBox(height: 15,)
      ,title,
      const SizedBox(height: 24,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Text(
          subtitle,
        textAlign: TextAlign.center,
         style: TextStyles.regular16.copyWith(
              color: const Color(0xFF4E5456),
            ),),
      ),
      ],


    );
  }
}
