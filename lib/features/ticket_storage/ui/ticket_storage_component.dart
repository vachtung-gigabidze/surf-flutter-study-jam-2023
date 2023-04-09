import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

//Компонент “Билет”
class TicketStorageComponent extends StatelessWidget {
  final Ticket ticket;
  const TicketStorageComponent({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.airplane_ticket),
        Text(ticket.name),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cloud_download),
        )
      ],
    );
  }
}
