import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/screen.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

@override
Widget build(BuildContext context) {
  return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      title: 'Instagram Clone');

  }
}



