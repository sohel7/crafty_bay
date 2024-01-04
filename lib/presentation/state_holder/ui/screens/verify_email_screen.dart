import 'package:crafty_bay/presentation/state_holder/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/state_holder/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 180,),
            const AppLogo(height: 80,),
            const SizedBox(height: 16,),
            Text('Welcome Back',style: Theme.of(context).textTheme.titleLarge,),
            Text('Pease Inter your Email Address',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: 14,),
            // Image.asset(AssetsPath.logo,width: 120,)
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 24,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                child: const Text('Next'),),
            )
          ],
        ),
      ),
    );
  }
}
