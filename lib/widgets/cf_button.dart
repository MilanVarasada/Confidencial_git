import 'package:flutter/material.dart';

class CFButton extends StatelessWidget {
  final Function btnAction;
  final String btnTitle;

  CFButton({this.btnAction,this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 0.9,
      height: 54,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.0),
        ),
        color: Color.fromRGBO(195, 75, 142, 1),
        textColor: Colors.white,
        // padding: EdgeInsets.all(8.0),
        onPressed: btnAction,
        child: Text(
         btnTitle,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
