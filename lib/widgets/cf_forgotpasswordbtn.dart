import 'package:flutter/material.dart';

class CFForgotPasswordBtn extends StatelessWidget {
  final Function btnAction;
  final String btnTitle;

  CFForgotPasswordBtn({this.btnAction, this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                            onTap: btnAction(),
                            child: Text(btnTitle,
                                style: btnTitle == 'Forgot Password?'
              ? TextStyle(color: Colors.white, fontSize: 18.0)
              : TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 18.0)));
  }
}
