import 'package:crafty_bay/presentation/state_holder/ui/screens/splash_screen.dart';
import 'package:crafty_bay/presentation/state_holder/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: MaterialColor(
        AppColors.primaryColor.value, AppColors.colorSwatch
        ),
       progressIndicatorTheme: ProgressIndicatorThemeData(
         color: AppColors.primaryColor
       ),
          inputDecorationTheme: InputDecorationTheme(
          border:OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),

      )
      )
      ) ,
      home: const SplashScreen(),
    );
  }
}
