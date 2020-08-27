import 'package:flutter/material.dart';

class EnterCode extends StatefulWidget {
  static const routeName = '/routeName';
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  final ValueNotifier<bool> _isSuccess = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.963,
            decoration:
                BoxDecoration(gradient: cfGradientLayer(isVertical: true)),
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: Text(
                    'LOGO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: Colors.lightBlue,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Enter Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              'to join a karaoke session',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              _isSuccess.value = value == "Demo";
                            },
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: _isSuccess,
                          builder: (context, isSuccess, _) => isSuccess
                              ? Text(
                                  'Success!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

LinearGradient cfGradientLayer({bool isVertical = false}) {
  return LinearGradient(
    colors: [
      ColorConstants.primaryGradientColor,
      ColorConstants.secondaryGradientColor,
    ],
    begin: isVertical ? Alignment.topCenter : Alignment.centerLeft,
    end: isVertical ? Alignment.bottomCenter : Alignment.centerRight,
  );
}

class ColorConstants {
  static const Color primaryGradientColor = Color(0xff923365);
  static const Color secondaryGradientColor = Color(0xff1C1D4B);
}
