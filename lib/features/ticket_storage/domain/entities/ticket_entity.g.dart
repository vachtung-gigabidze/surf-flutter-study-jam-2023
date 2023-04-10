// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: json['id'] as int,
      name: json['name'] as String,
      pathFile: json['pathFile'] as String? ?? "",
      url: json['url'] as String,
      ticketType:
          $enumDecodeNullable(_$TicketTypeEnumMap, json['ticketType']) ??
              TicketType.air,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pathFile': instance.pathFile,
      'url': instance.url,
      'ticketType': _$TicketTypeEnumMap[instance.ticketType]!,
    };

const _$TicketTypeEnumMap = {
  TicketType.air: 'air',
  TicketType.train: 'train',
};
