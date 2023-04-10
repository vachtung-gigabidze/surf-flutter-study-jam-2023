import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/ticked_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

class LocalTicketStorageRepository implements TicketStorageRepository {
  List<Ticket> tickets = const [
    // Ticket(name: "Ticket1", url: "", ticketType: TicketType.train),
    // Ticket(name: "Ticket2", url: ""),
    // Ticket(name: "Ticket3", url: ""),
    // Ticket(name: "Ticket4", url: "")
  ];

  @override
  addTicket(Ticket ticket) {
    tickets.add(ticket);
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
