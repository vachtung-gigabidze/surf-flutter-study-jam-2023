import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/local_ticket_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_component.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_add.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Хранение билетов"),
      ),
      body: Builder(
        builder: (context) => Stack(children: [
          FutureBuilder(
            builder: (context, AsyncSnapshot<List<Ticket>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return TicketStorageComponent(
                          ticket: snapshot.data![index]);
                    });
              } else {
                return const Center(
                  child: Text("Здесь пока ничего нет"),
                );
              }
            },
            future: LocalTicketStorageRepository().getTicket(),
          ),
          const Positioned(
            right: 10,
            bottom: 10,
            child: TicketStorageAddButton(),
          ),
        ]),
      ),
    );
  }
}
