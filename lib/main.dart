import 'package:final_fruit_app/core/helper_function/on_generate_routes.dart';
import 'package:final_fruit_app/core/services/shared_preferencesingleton.dart';
import 'package:final_fruit_app/core/utils/app_colors.dart';
import 'package:final_fruit_app/features/splash/presentation/views/splash_view.dart';
import 'package:final_fruit_app/firebase_options.dart';
import 'package:final_fruit_app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 await Prefs.init();
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
            locale: Locale("ar"),
      debugShowCheckedModeBanner: false,
    onGenerateRoute: onGenerateRoute,
    initialRoute: SplashView.routeName,

    );
  }
}