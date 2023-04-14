import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_storage_state/ticket_storage_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/services/download_service.dart';

//Компонент “Билет”
class TicketStorageComponent extends StatefulWidget {
  final Ticket ticket;
  const TicketStorageComponent({super.key, required this.ticket});

  @override
  State<TicketStorageComponent> createState() => _TicketStorageComponentState();
}

class _TicketStorageComponentState extends State<TicketStorageComponent> {
  bool isDownload = false;
  ValueNotifier<String> progressMessage =
      ValueNotifier<String>("Ожидается начала загрузки");
  ValueNotifier<double> progressStatus = ValueNotifier<double>(.0);

  final dio = Dio();
  late DownloadService ds;
  final CancelToken cancelToken = CancelToken();

  // Future download(Dio dio, String url, savePath) async {
  //   try {
  //     await dio.download(
  //       url,
  //       savePath,
  //       onReceiveProgress: showDownloadProgress,
  //       options: Options(
  //           responseType: ResponseType.bytes,
  //           followRedirects: false,
  //           validateStatus: (status) {
  //             return status! < 500;
  //           }),
  //       cancelToken: cancelToken,
  //     );
  //   } catch (e) {
  //     final snackBar = SnackBar(content: Text(e.toString()));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

  // Future download2(Dio dio, String url, String savePath) async {
  //   try {
  //     Response response = await dio.get(
  //       url,
  //       onReceiveProgress: showDownloadProgress,

  //       //Received data with List<int>
  //       options: Options(
  //           receiveTimeout: const Duration(seconds: 1),
  //           responseType: ResponseType.bytes,
  //           followRedirects: false,
  //           validateStatus: (status) {
  //             return status! < 500;
  //           }),
  //     );
  //     //print(response.headers);
  //     File file = File(savePath);
  //     var raf = file.openSync(mode: FileMode.write);
  //     // response.data is List<int> type
  //     raf.writeFromSync(response.data);
  //     await raf.close();
  //   } catch (e) {
  //     //print(e);
  //   }
  // }

  static String formatBytes(int bytes) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    final i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(2)} ${suffixes[i]}';
  }

  void showDownloadProgress(received, total) async {
    if (total != -1) {
      progressStatus.value = (received / total);
      progressMessage.value =
          'Загрузка ${formatBytes(received)} из ${formatBytes(total)}';
    } else {
      progressMessage.value = "Ожидается начала загрузки";
    }
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  void initState() {
    super.initState();
    ds = DownloadService(dio: dio);
  }

  @override
  void dispose() {
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
          const SizedBox(width: 20),
          Icon(
            widget.ticket.ticketType == TicketType.air
                ? Icons.airplane_ticket_outlined
                : Icons.train_sharp,
            size: 34,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.ticket.name,
                  overflow: TextOverflow.ellipsis,
                ),
                ValueListenableBuilder<double>(
                    valueListenable: progressStatus,
                    builder: (_, value, __) =>
                        LinearProgressIndicator(value: value)),
                ValueListenableBuilder<String>(
                    valueListenable: progressMessage,
                    builder: (_, value, __) => Text(value)),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () async {
              var tempDir = await getTemporaryDirectory();
              String fullPath = tempDir.path + "/magazine2.pdf";
              // print('full path ${fullPath}');

              ds.downloadPdf(
                  url: widget.ticket.url,
                  cancelToken: cancelToken,
                  onReceiveProgress: showDownloadProgress,
                  start: 0);
            },
            icon: const Icon(
              Icons.cloud_download_outlined,
              size: 34,
            ),
          ),
          IconButton(
            onPressed: () {
              if (!cancelToken.isCancelled) {
                cancelToken.cancel();
              }
            },
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
