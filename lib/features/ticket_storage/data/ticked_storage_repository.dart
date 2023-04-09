import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

abstract class TicketStorageRepository {
  Future<List<Ticket>> getTicket();

  Future addTicket(Ticket ticket);

  Future deleteTicket(Ticket ticket);
}
