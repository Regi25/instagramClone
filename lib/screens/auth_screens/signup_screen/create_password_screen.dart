import 'package:flutter/material.dart';
import 'package:instagram_clone/components/text_input_field.dart';
import 'package:instagram_clone/screens/auth_screens/constants.dart';

import '../components/auth_screen_padding.dart';

class  CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: AuthScreenPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              const Text ("Create a password", style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              const SizedBox(height: authFormGapValue),
              const Text("Create a password with at least 7 letters or numbers. It should be something others can't guess", style: TextStyle(
                fontSize: 12.0
              ),),
              const SizedBox(height: authFormGapValue),
              const TextInputField(label: "Password"),
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
