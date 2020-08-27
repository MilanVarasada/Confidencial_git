import '../playListScreen.dart';
import '../../widgets/cf_button.dart';
import '../../widgets/cf_forgotpasswordbtn.dart';
import './../tab_screen.dart';
import '../../widgets/cf_text_field.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';

  _clickedOnSignUpButton(BuildContext context) {
    Navigator.of(context).pushNamed(TabScreen.routeName);
  }

  _clickedOnSignInButton() {
    print('sign in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
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
              width: double.infinity,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                )))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          CFTextField(
                            hint: 'First Name',
                          ),
                          CFTextField(
                            hint: 'Last Name',
                          ),
                          CFTextField(
                            hint: 'Email',
                          ),
                          CFTextField(
                            hint: 'Password',
                          ),
                          CFTextField(
                            hint: 'Zip',
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: CFButton(
                              btnAction: () {
                                _clickedOnSignUpButton(context);
                              },
                              btnTitle: 'Sign Up',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15, top: 20),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Already have an account ?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              CFForgotPasswordBtn(
                                btnAction: _clickedOnSignInButton,
                                btnTitle: 'Sign In',
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
