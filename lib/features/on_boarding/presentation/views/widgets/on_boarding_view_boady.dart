import 'package:dots_indicator/dots_indicator.dart';
import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/services/shared_preferencesingleton.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/core/widgets/custom_button.dart';
import 'package:final_fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:final_fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBoady extends StatefulWidget {
  const OnBoardingViewBoady({super.key});

  @override
  State<OnBoardingViewBoady> createState() =>
      _OnBoardingViewBoadyiewBoadyState();
}

class _OnBoardingViewBoadyiewBoadyState extends State<OnBoardingViewBoady> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5)),
          dotsCount: 2,
        ),
        const SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          child: Visibility(
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: currentPage == 1 ? true : false,
              child: CustomButton(
                  text: "Get Started",
                  onPressed: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(SigninView.routeName);
                  })),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
