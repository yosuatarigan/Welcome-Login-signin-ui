import 'package:flutter/material.dart';
import 'package:welcome_login_signup/component/roundedinput.dart';
import 'package:welcome_login_signup/component/roundedinputpassword.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Create an acount',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
          Column(
            children: [
              RoundedInput('name'),
              SizedBox(
                height: 10,
              ),
              RoundedInput('email'),
              SizedBox(
                height: 10,
              ),
              RoundedInputpassword(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(left: 50, right: 50))),
                  onPressed: () {},
                  child: Text('Signup')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Text('Or'),
              Expanded(
                child: Divider(
                  color: Colors.black,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                'Social Media Signup',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Image.asset('assets/logogoogle.png'),
                      onPressed: () {}),
                  IconButton(
                      icon: Image.asset('assets/logofacebook.png'),
                      onPressed: () {}),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    child: Text('Already have an acount? Signin'),
                    onPressed: () {
                     Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
