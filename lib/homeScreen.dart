import './ui/auth/signupScreen.dart';

import './widgets/cf_button.dart';
import './widgets/cf_forgotpasswordbtn.dart';

import './ui/auth/signInScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  void _clickedOnForgotPassword() {
    print('forgot pass clicked');
  }

  _clickedOnSignInButton(BuildContext context) {
    Navigator.of(context).pushNamed(SignInScreen.routeName);
  }

  void _clickedOnSignUpButton(BuildContext context) {
   Navigator.of(context).pushNamed(SignupScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background.png'),fit: BoxFit.fitWidth,
        
      )),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CFButton(
                        btnAction: () {
                          _clickedOnSignInButton(context);
                        },
                        btnTitle: 'Sign In',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CFButton(
                        btnAction: () {
                          _clickedOnSignUpButton(context);
                        },
                        btnTitle: 'Sign Up',
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CFForgotPasswordBtn(
                            btnAction: _clickedOnForgotPassword,
                            btnTitle: 'Forgot Password?',
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
    ),
    
    );
  }
}
