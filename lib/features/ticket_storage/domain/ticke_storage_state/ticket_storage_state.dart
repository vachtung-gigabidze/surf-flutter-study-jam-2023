part of 'ticket_storage_cubit.dart';

@freezed
class TicketStorageState with _$TicketStorageState {
  factory TicketStorageState.empty() = _TicketStorageStateEmpty;
  factory TicketStorageState.loaded(List<Ticket> tickets) =
      _TicketStorageStateLoaded;

  factory TicketStorageState.fromJson(Map<String, dynamic> json) =>
      _$TicketStorageStateFromJson(json);
}
