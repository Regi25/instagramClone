import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screens/auth_screens/constants.dart';

import '../components/auth_screen_padding.dart';

class  EmailInputScreen extends StatelessWidget {
  const EmailInputScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: AuthScreenPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
               const Text ("What's your email?", style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
               ),
                const SizedBox(height: authFormGapValue),
                const Text("Enter the email where you can be contacted. No one will see this on your profile", style: TextStyle(
                  fontSize: 12.0
                ),),
                const SizedBox(height: authFormGapValue),
                const TextInputField(label: 'Email'),
                const SizedBox(height: authFormGapValue),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(onPressed:() => Navigator.pushNamed(context, '/signup-email-confirmation'),
                      child: const Text("Next"))),

            ],
          ),
        ),
      )),
      //child: Text('Sign-up screen'),
    );
  }
}
