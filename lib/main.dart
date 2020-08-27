import './ui/auth/enter_code.dart';
import './ui/tab_screen.dart';

import './ui/playListScreen.dart';
import './ui/auth/signupScreen.dart';
import './ui/auth/signInScreen.dart';
import 'package:flutter/material.dart';
import './homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Confidencial',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {
           SignInScreen.routeName: (ctx) => SignInScreen(),
           SignupScreen.routeName: (ctx) => SignupScreen(),
           PlayListScreen.routeName: (ctx) => PlayListScreen(),
            TabScreen.routeName : (ctx) => TabScreen(),
            EnterCode.routeName : (ctx) => EnterCode(),
        },
      
    );
  }
}
