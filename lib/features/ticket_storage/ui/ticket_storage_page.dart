import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_storage_state/ticket_storage_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_component.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_add.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketStorageCubit, TicketStorageState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text("Хранение билетов"),
        ),
        body: Builder(
          builder: (context) => Stack(children: [
            (state.tickets.isEmpty)
                ? const Center(
                    child: Text("Здесь пока ничего нет"),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: state.tickets.length,
                    itemBuilder: (context, index) {
                      return TicketStorageComponent(
                          ticket: state.tickets[index]);
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
