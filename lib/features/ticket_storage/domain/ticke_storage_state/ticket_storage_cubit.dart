import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/local_ticket_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

class TicketStorageCubit extends HydratedCubit<List<Ticket>> {
  TicketStorageCubit() : super([]);

  Future<List<Ticket>> getTicket() async {
    return state;
  }

  addTicket(Ticket ticket) async {
    state.add(ticket);
    emit(state);
  }

  @override
  List<Ticket> fromJson(Map<String, dynamic> json) {
    final state = (json as List<dynamic>)
        .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
        .toList();
    return state;
  }

  @override
  Map<String, dynamic>? toJson(List<Ticket> state) {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (state != null) {
      data['ticket'] = state.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
