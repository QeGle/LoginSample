import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_sample/models/ticket.dart';
import 'package:login_sample/utils/utils.dart';
import 'package:login_sample/widgets/ticket.dart';

class TicketScreen extends StatefulWidget {
  @override
  _TicketScreenState createState() => _TicketScreenState();
}

enum SnackType { Notification, Error }

class _TicketScreenState extends State<TicketScreen> {
  final palette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: palette.darkGreen,
        appBar: AppBar(
            backgroundColor: palette.darkGreen,
            title:
                Align(alignment: Alignment.centerLeft, child: Text("Ticket"))),
        body: Align(
          alignment: Alignment.center,
          child: TicketCard(TicketInfo("May 9", "8:35 AM", "B2", "19A", "KB76",
              SeatClass.Economy, "\$170.00", "NNNNNNNNNN")),
        ));
  }
}
