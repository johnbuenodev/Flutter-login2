import 'package:flutter/material.dart';
import 'package:login2flutter/pages/Login.dart';
import 'package:login2flutter/pages/Dashboard.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login2',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
