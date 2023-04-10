// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_storage_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketStorageState _$$_TicketStorageStateFromJson(
        Map<String, dynamic> json) =>
    _$_TicketStorageState(
      (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TicketStorageStateToJson(
        _$_TicketStorageState instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };
