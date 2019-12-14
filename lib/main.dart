import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sample/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return app();
  }

  MaterialApp app() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: LoginScreen(),
    );
  }
}
