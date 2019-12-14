import 'package:flutter/material.dart';
import 'package:login_sample/models/ticket.dart';
import 'package:login_sample/utils/utils.dart';

class InfoCard extends StatelessWidget {
  InfoCard(this.ticket);

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
            getCell("Flight date", ticket.flightDate),
            SizedBox(height: 48),
            getCell("Boarding time", ticket.boardingTime)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getCell("Gate", ticket.gate),
            SizedBox(height: 48),
            getCell("Seat", ticket.seat)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getCell("Flight no", ticket.fligthNo),
            SizedBox(height: 48),
            getCell("Class", ticket.seatClass.toString().split('.')[1])
          ],
        ),
      ],
    );
  }

  Widget getCell(String first, String second) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(first.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                  color: palette.lightGreen600)),
          SizedBox(height: 16),
          Text(second,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ))
        ],
      ),
    );
  }
}
