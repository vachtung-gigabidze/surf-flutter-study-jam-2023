import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/local_ticket_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket_entity.dart';

part 'ticket_storage_state.dart';
part 'ticket_storage_cubit.freezed.dart';
part 'ticket_storage_cubit.g.dart';

class TicketStorageCubit extends HydratedCubit<TicketStorageState> {
  TicketStorageCubit(this.ticketStorageRepository)
      : super(TicketStorageState.empty());

  final LocalTicketStorageRepository ticketStorageRepository;

  Future<void> getTicket() async {
    try {
      final List<Ticket> tickets = await ticketStorageRepository.getTicket();
      emit(TicketStorageState.loaded(tickets));
    } catch (error, st) {
      emit(TicketStorageState.loaded([]));
      addError(error, st);
    }
  }

  @override
  TicketStorageState? fromJson(Map<String, dynamic> json) {
    final state = TicketStorageState.fromJson(json);
    return state.whenOrNull(
      loaded: (tickets) => TicketStorageState.loaded(tickets),
    );
  }

  @override
  Map<String, dynamic>? toJson(TicketStorageState state) {
    return state
            .whenOrNull(
              loaded: (tickets) => TicketStorageState.loaded(tickets),
            )
            ?.toJson() ??
        TicketStorageState.empty().toJson();
  }
}
