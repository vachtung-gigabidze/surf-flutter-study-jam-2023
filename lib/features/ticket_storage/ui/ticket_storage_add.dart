import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_storage_state/ticket_storage_cubit.dart';

class TicketStorageAddButton extends StatefulWidget {
  const TicketStorageAddButton({
    super.key,
  });

  @override
  State<TicketStorageAddButton> createState() => _TicketStorageAddButtonState();
}

class _TicketStorageAddButtonState extends State<TicketStorageAddButton> {
  TextEditingController controller = TextEditingController();
  bool validate = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("Добавить"),
      onPressed: () {
        Scaffold.of(context).showBottomSheet<void>(
          (BuildContext context) {
            return SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: "Введите url",
                        errorText: !validate ? "Введите валидный url" : null,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                          style: BorderStyle.solid,
                        )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                          style: BorderStyle.solid,
                        )),
                        hintText: 'Введите url',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FloatingActionButton.extended(
                      label: const Text('Добавить'),
                      backgroundColor: Colors.grey,
                      onPressed: () {
                        validate = Uri.parse(controller.text).isAbsolute;
                        // if (validate) {
                        context.read<TicketStorageCubit>().addTicket(
                            Ticket(name: "Ticket1", url: controller.text));
                        Navigator.pop(context);
                        // }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
