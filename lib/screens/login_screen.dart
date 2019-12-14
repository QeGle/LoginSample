import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_sample/screens/ticket_screen.dart';
import 'package:login_sample/utils/utils.dart';
import 'package:login_sample/widgets/button.dart';
import 'package:login_sample/widgets/login_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum SnackType { Notification, Error }

class _LoginScreenState extends State<LoginScreen> {
  final palette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette.darkGreen,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/emirates_airlines.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoginField(
                icon: Icons.mail_outline,
                label: "E-MAIL",
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoginField(
                icon: Icons.lock_open,
                label: "PASSWORD",
                obscureText: true,
              ),
            ),
            Text(
              "Forget Password?",
              style: TextStyle(
                  color: palette.lightGreen600,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: LoginButton(
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: palette.darkGreen, fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new TicketScreen()));
                },
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: palette.lightGreen600,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0),
                ),
                SizedBox(width: 8),
                Text(
                  "Joint now",
                  style: TextStyle(
                      color: palette.yellowOrange,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0),
                ),
              ],
            )
          ]),
    );
  }
}
