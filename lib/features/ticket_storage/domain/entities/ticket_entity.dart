class Ticket {
  final String name;
  final String pathFile;
  final String url;
  final TicketType ticketType;

  Ticket(
      {required this.name,
      this.pathFile = "",
      required this.url,
      this.ticketType = TicketType.air});
}

enum TicketType { air, train }
