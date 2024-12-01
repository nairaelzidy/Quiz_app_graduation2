import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/utils/app_images.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        
        PageviewItem(
          isvisible: true,
          image: Assets.onboarding_1,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              "Explore our study materials in IQ and English. \nWe will provide the best resources that will help you improve your skills",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                ' Wellcome to ',
                style: TextStyles.bold23,
              ),
              Text(
                'Skill',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                'Quest',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        const PageviewItem(
          isvisible: false,
          image: Assets.onboarding_2,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle:
              "A variety of study materials for all levels.\nGet ready to achieve your goals!",
          title: Text(
            'Get ready to achieve your goals',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        
      ],
    );
  }
}
