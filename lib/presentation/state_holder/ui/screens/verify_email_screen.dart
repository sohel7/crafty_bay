import 'package:crafty_bay/presentation/state_holder/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/state_holder/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 400,),
          AppLogo(height: 120,),
          // Image.asset(AssetsPath.logo,width: 120,)
          TextFormField(),
        ],
      ),
    );
  }
}
