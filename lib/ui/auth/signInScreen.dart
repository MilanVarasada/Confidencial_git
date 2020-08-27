import '../../ui/auth/enter_code.dart';
import '../../widgets/cf_button.dart';
import '../../widgets/cf_forgotpasswordbtn.dart';

import '../../widgets/cf_text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/signIn';
  _clickedOnSignInButton(BuildContext context) {
     Navigator.of(context).pushNamed(EnterCode.routeName);
  }

  void _clickedOnForgotPassword() {
    print('forgot pass');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          SingleChildScrollView(
                  child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
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
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                            child: Column(
                              children: <Widget>[
                                CFTextField(
                                  hint: 'Email',
                                ),
                                CFTextField(
                                  hint: 'Password',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60.0),
                            child: CFButton(
                              btnAction: () {
                                _clickedOnSignInButton(context);
                              },
                              btnTitle: 'Sign In',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: CFForgotPasswordBtn(
                              btnAction: _clickedOnForgotPassword,
                              btnTitle: 'Forgot Password?',
                            ),
                          )
                        ],
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
