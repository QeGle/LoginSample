import 'package:flutter/material.dart';
import 'package:login_sample/models/ticket.dart';
import 'package:login_sample/utils/utils.dart';
import 'package:login_sample/widgets/info.dart';
import 'package:login_sample/widgets/short_info.dart';

class TicketCard extends StatelessWidget {
  TicketCard(this.ticket);

  final palette = ColorPalette();
  final TicketInfo ticket;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380,
        height: 590,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
                child: ShortInfoCard(TicketInfo("May 9", "8:35 AM", "B2", "19A",
                    "KB76", SeatClass.Economy, "\$170.00", "NNNNNNNNNN")),
              ),
              Divider(
                color: ColorPalette().lightGreen600,
                endIndent: 24,
                indent: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
                child: InfoCard(TicketInfo("May 9", "8:35 AM", "B2", "19A",
                    "KB76", SeatClass.Economy, "\$170.00", "NNNNNNNNNN")),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  //костыль, т.к. простого пути для создания пунктирного разделителя нет, а рисовать через path/box не хотелось
                  "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: TextStyle(
                      color: palette.lightGreen600, letterSpacing: 1.1),
                ),
              ),
              Image.asset(
                "images/barcode.png",
                fit: BoxFit.cover,
                width: 250,
              ),
            ]));
  }
}
