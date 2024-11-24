import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/services/shared_preferencesingleton.dart';
import 'package:final_fruit_app/core/utils/app_images.dart';
import 'package:final_fruit_app/features/auth/presentation/views/login_view.dart';
import 'package:final_fruit_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {


  @override
  void initState() {
    excuteNaviagtion();
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     SvgPicture.asset(Assets.imagesPlant),
        //   ],
        // ),
       Center(child: Image.asset("assets/images/logo3.png",width: 400,height: 300,)),
        // SvgPicture.asset(Assets.imagesLogo),
         // SvgPicture.asset(Assets.imagesSplashBottom,fit: BoxFit.fill,)
      ],
    );
  }

   void excuteNaviagtion() {
   //bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
     
      // if (isOnBoardingViewSeen) {
      //    Navigator.pushReplacementNamed(context, LoginView.routeName);
      // //   var isLoggedIn = FirebaseAuthService().isLoggedIn();

      // //   if (isLoggedIn) {
      // //     Navigator.pushReplacementNamed(context, MainView.routeName);
      // //   } else {
      // //     Navigator.pushReplacementNamed(context, SigninView.routeName);
      // //   }
      // } else {
      //   Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      // }
      
    });
  }
}

