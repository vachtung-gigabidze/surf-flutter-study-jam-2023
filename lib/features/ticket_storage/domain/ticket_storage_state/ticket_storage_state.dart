part of 'ticket_storage_cubit.dart';

@freezed
class TicketStorageState with _$TicketStorageState {
  factory TicketStorageState(List<Ticket> tickets) = _TicketStorageState;

  factory TicketStorageState.fromJson(Map<String, dynamic> json) =>
      _$TicketStorageStateFromJson(json);
}
