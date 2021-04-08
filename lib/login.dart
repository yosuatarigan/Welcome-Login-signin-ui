import 'package:flutter/material.dart';
import 'package:welcome_login_signup/component/roundedinput.dart';
import 'package:welcome_login_signup/component/roundedinputpassword.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome !'),
        SizedBox(
          height: 10,
        ),
        RoundedInput('Email'),
        SizedBox(
          height: 10,
        ),
        RoundedInputpassword(),
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 50, right: 50))),
            onPressed: () {},
            child: Text('Login')),
        Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
