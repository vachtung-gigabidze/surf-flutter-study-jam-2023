import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.g.dart';

@JsonSerializable()
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

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

enum TicketType { air, train }
