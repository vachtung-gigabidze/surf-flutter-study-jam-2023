import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/local_ticket_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticke_storage_state/ticket_storage_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_component.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_add.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketStorageCubit, List<Ticket>>(
      builder: (context, tickets) => Scaffold(
        appBar: AppBar(
          title: const Text("Хранение билетов"),
        ),
        body: Builder(
          builder: (context) => Stack(children: [
            (tickets.isEmpty)
                ? const Center(
                    child: Text("Здесь пока ничего нет"),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: tickets.length,
                    itemBuilder: (context, index) {
                      return TicketStorageComponent(ticket: tickets[index]);
                    }),
            const Positioned(
              right: 10,
              bottom: 10,
              child: TicketStorageAddButton(),
            ),
          ]),
        ),
      ),
    );
  }
}
