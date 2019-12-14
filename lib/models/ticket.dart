class TicketInfo {
  TicketInfo(this.flightDate, this.boardingTime, this.gate, this.seat,
      this.fligthNo, this.seatClass, this.price, this.barcode);

  final String flightDate;
  final String boardingTime;
  final String gate;
  final String seat;
  final String fligthNo;
  final SeatClass seatClass;
  final String price;
  final String barcode;
}

enum SeatClass {
  Economy,
  Business,
  Luxe,
}
