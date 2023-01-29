import 'package:flutter/material.dart';
import 'package:reddit/core/common/sign_in_button.dart';
import 'package:reddit/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,  // centers the logo
         title:
         Image.asset(
          Constants.logoPath,
          height: 40,),
          actions:[
            TextButton(onPressed: (){}, child: Text('skip'))
          ]
      ),
      body:Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            'Dive into andfgdything',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Constants.loginEmotePath,
              height: 400,
            ),
          ),
          const SizedBox(height: 20),
          const SignInButton()
        ],
      ),
    );
  }
}

