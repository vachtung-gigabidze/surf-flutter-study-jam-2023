import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.g.dart';

@immutable
@JsonSerializable()
class Ticket extends Equatable {
  const Ticket(
      {required this.name,
      this.pathFile = "",
      required this.url,
      this.ticketType = TicketType.air});

  final String name;
  final String pathFile;
  final String url;
  final TicketType ticketType;

  static Ticket fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  @override
  List<Object?> get props => [name, pathFile, url, ticketType];
}

enum TicketType { air, train }
