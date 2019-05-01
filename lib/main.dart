import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './Pages/Auth_Page.dart';
import './Pages/ApplicationPages/Home_Page.dart';
import './Pages/Terms_and_Conditions.dart';
import './Pages/Sign_Up_Flow/1_Sign_Up_Page.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            color: Colors.grey[400],
            textTheme: TextTheme(
              title: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.grey[900]),
          primarySwatch: Colors.blue,
          buttonColor: Colors.blueGrey,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => AuthenticationPage(),
          '/HomeScreen': (context) => HomePage(),
          '/TermsAndConditions': (context) => TermsAndConditions(),
          '/SignUpPage1': (context) => SignUpPage1(),
        },
      );
  }
}
