import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/components/text_input_field.dart';

import '../components/auth_screen_padding.dart';
import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: SafeArea(
         right: false,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Flexible(
                     child: Center(
                       child: SvgPicture.asset('assets/app-logos/instagram-clone-logo.svg'),),),
                   Flexible(
                         child: AuthScreenPadding(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 children: [
                                   const TextInputField(
                                           label: 'Username or email',
                                           ),
                                   const SizedBox(height: authFormGapValue),
                                   const TextInputField(
                                           label: 'Password',
                                   ),
                                   const SizedBox(height: authFormGapValue),
                                   SizedBox(
                                       width: double.infinity,
                                       child: FilledButton(onPressed:() => print('Login clicked'),
                                           child: const Text('Login'))),
                                   TextButton(
                                       onPressed: () => print('Forgot password?'),
                                       child: const Text('Forgot password?'))
                                 ],
                               ),

                             Column(
                               children: [
                                   OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/signup'), child: const Text('Create new account'),
                                   ),
                                 TextButton(onPressed: () => print('Clicked'), 
                                     child: Text('canshecode.com',
                                     style: Theme.of(context).brightness == Brightness.dark
                                         ? const TextStyle(color: Colors.white54)
                                         : const TextStyle(color: Colors.black54)
                                     ))
                                  ],
                                )
                             ],
                           ),
                         ),),

                 ],
               ),

       ),

        );
  }
}