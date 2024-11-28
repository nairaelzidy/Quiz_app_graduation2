import 'package:final_fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:final_fruit_app/features/auth/presentation/views/singup_view.dart';
import 'package:final_fruit_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:final_fruit_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    // case CheckoutView.routeName:
    //   return MaterialPageRoute(builder: (context) => const CheckoutView());
    // case BestSellingView.routeName:
    //   return MaterialPageRoute(builder: (context) => const BestSellingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    // case MainView.routeName:
    //   return MaterialPageRoute(builder: (context) => const MainView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
