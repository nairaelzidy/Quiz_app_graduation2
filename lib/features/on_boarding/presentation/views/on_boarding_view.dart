import 'package:final_fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_view_boady.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const String routeName="OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: OnBoardingViewBoady()));
  }
}