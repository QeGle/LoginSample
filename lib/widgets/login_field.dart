import 'package:flutter/material.dart';
import 'package:login_sample/utils/borders.dart';
import 'package:login_sample/utils/utils.dart';

class LoginField extends StatelessWidget {
  LoginField({this.icon, this.label, this.obscureText = false});
  final palette = ColorPalette();
  final IconData icon;
  final String label;
  final bool obscureText;
  var _text = "";

  String getData() => _text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SimpleBorders(
                bottom: true,
                width: 60,
                height: 60,
                widget: Icon(
                  icon,
                  color: palette.yellowOrange,
                )),
            SimpleBorders(
                left: true,
                bottom: true,
                width: 300,
                height: 60,
                widget: SizedBox(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: TextField(
                        obscureText: obscureText,
                        cursorColor: Colors.grey[400],
                        cursorWidth: 1.0,
                        maxLines: 1,
                        onChanged: (String value) {
                          _text = value;
                        },
                        style: TextStyle(color: Colors.grey[400]),
                        decoration: InputDecoration(
                          hintStyle:TextStyle(fontSize: 4),
                          labelText: label,
                          labelStyle: TextStyle(color: Colors.grey[400],fontSize: 12),
                          border: InputBorder.none,
                        ),
                      ),
                    )))
          ],
        ),
      ],
    );
  }

 
}
