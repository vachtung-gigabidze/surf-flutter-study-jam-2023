import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_storage_state/ticket_storage_cubit.dart';

//Компонент “Билет”
class TicketStorageComponent extends StatefulWidget {
  final Ticket ticket;
  const TicketStorageComponent({super.key, required this.ticket});

  @override
  State<TicketStorageComponent> createState() => _TicketStorageComponentState();
}

class _TicketStorageComponentState extends State<TicketStorageComponent>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isDownload = false;
  String downloadMessage = "";

  final dio = Dio();
  final cancelToken = CancelToken();

  Future download(Dio dio, String url, savePath) async {
    try {
      await dio.download(
        url,
        savePath,
        onReceiveProgress: showDownloadProgress,
        cancelToken: cancelToken,
      );
    } catch (e) {
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String showDownloadProgress(received, total) {
    if (total != -1) {
      return '${(received / total * 100).toStringAsFixed(0)}%';
    }
    return "Ожидается начала загрузки";
  }

  @override
  void initState() {
    dio.interceptors.add(LogInterceptor());

    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.stop();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.ticket.ticketType == TicketType.air
                ? Icons.airplane_ticket_outlined
                : Icons.train_sharp,
            size: 34,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.ticket.name,
                ),
                const SizedBox(height: 10),
                LinearProgressIndicator(
                  value: controller.value,
                  semanticsLabel: 'Linear progress indicator',
                ),
                const Text(
                  "Ожидается начала загрузки",
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cloud_download_outlined,
              size: 34,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.pause_circle_outline_outlined,
              size: 34,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<TicketStorageCubit>().removeTicket(widget.ticket);
            },
            icon: const Icon(
              Icons.delete_outline,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}
