import 'package:final_fruit_app/core/helper_function/on_generate_routes.dart';
import 'package:final_fruit_app/core/services/custom_bloc_observer.dart';
import 'package:final_fruit_app/core/services/get_it_services.dart';
import 'package:final_fruit_app/core/services/shared_preferencesingleton.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/features/splash/presentation/views/splash_view.dart';
import 'package:final_fruit_app/firebase_options.dart';
import 'package:final_fruit_app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// hello3
//restart

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer=CustomBlocObserver();
 await  Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform);
 await Prefs.init();
 setupGetit();
 
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo"
      ),
      localizationsDelegates:const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale("en"),
      debugShowCheckedModeBanner: false,
    onGenerateRoute: onGenerateRoute,
    initialRoute: SplashView.routeName,

    );
  }
}