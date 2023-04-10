import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

part 'ticket_storage_state.dart';
part 'ticket_storage_cubit.freezed.dart';
part 'ticket_storage_cubit.g.dart';

class TicketStorageCubit extends HydratedCubit<TicketStorageState> {
  TicketStorageCubit() : super(TicketStorageState([]));

  Future<List<Ticket>> getTicket() async {
    return state.tickets;
  }

  addTicket(Ticket ticket) {
    emit(state.copyWith(tickets: [...state.tickets]..add(ticket)));
  }

  @override
  TicketStorageState fromJson(Map<String, dynamic> json) {
    final state = TicketStorageState.fromJson(json);
    return state;
  }

  @override
  Map<String, dynamic>? toJson(TicketStorageState state) {
    return state.toJson();
  }
}
