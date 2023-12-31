import 'package:crafty_bay/presentation/state_holder/ui/screens/verify_email_screen.dart';
import 'package:crafty_bay/presentation/state_holder/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/state_holder/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void moveToNextScreen()async{
  await Future.delayed(const Duration(seconds:2));
    Get.offAll(const VerifyEmailScreen());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            //Image.asset(AssetsPath.logo, width: 120,),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            const SizedBox(height: 8,),
            Text('version 1.0'),
            const SizedBox(height: 8,),
          ] ,
        ),
      ),
    );
  }
}
