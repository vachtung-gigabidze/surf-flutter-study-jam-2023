// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_storage_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketStorageStateEmpty _$$_TicketStorageStateEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_TicketStorageStateEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TicketStorageStateEmptyToJson(
        _$_TicketStorageStateEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_TicketStorageStateLoaded _$$_TicketStorageStateLoadedFromJson(
        Map<String, dynamic> json) =>
    _$_TicketStorageStateLoaded(
      (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TicketStorageStateLoadedToJson(
        _$_TicketStorageStateLoaded instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
      'runtimeType': instance.$type,
    };
