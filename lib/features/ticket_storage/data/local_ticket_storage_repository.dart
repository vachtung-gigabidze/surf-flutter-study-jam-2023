import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/ticked_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

class LocalTicketStorageRepository implements TicketStorageRepository {
  List<Ticket> tickets = [
    Ticket(name: "Ticket1", url: "", ticketType: TicketType.train),
    Ticket(name: "Ticket2", url: ""),
    Ticket(name: "Ticket3", url: ""),
    Ticket(name: "Ticket4", url: "")
  ];

  @override
  Future<void> addTicket(Ticket ticket) {
    tickets.add(ticket);
    return Future(() => null);
  }

  @override
  Future deleteTicket(Ticket ticket) {
    return Future(() => null);
  }

  @override
  Future<List<Ticket>> getTicket() {
    return Future.value(tickets);
  }
}
