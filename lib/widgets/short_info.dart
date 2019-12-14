import 'package:flutter/material.dart';
import 'package:login_sample/models/ticket.dart';
import 'package:login_sample/utils/utils.dart';

class ShortInfoCard extends StatelessWidget {
  ShortInfoCard(this.ticket);

  final palette = ColorPalette();
  final TicketInfo ticket;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "images/emirates_airlines.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(height: 48),
            getCell("Ticket Price", ticket.price)
          ],
        ),
        Image.asset(
          "images/uae.png",
          fit: BoxFit.cover,
          width: 180,
        ),
      ],
    );
  }

  Widget getCell(String first, String second) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(first,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: palette.lightGreen600)),
          SizedBox(height: 12),
          Text(second,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ))
        ],
      ),
    );
  }
}
