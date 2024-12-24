import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screens/auth_screens/constants.dart';

import '../components/auth_screen_padding.dart';

class  EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: AuthScreenPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              const Text ("Enter the confirmation code", style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              const SizedBox(height: authFormGapValue),
              const Text("To confirm your account, enter 6-digits we sent to email@instagramclone.com", style: TextStyle(
                fontSize: 12.0
              ),),
              const SizedBox(height: authFormGapValue),
              const TextInputField(label: 'Confirmation code'),
              const SizedBox(height: authFormGapValue),
              SizedBox(
                  width: double.infinity,
                  child: FilledButton(onPressed: () => Navigator.pushNamed(context, '/create-password'),
                      child: const Text("Next"))),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/login'), child: const Text("I didn't get the code"),
                ),
              ),

            ],
          ),
        ),
      )),
      //child: Text('Sign-up screen'),
    );
  }
}
