// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactEntityImpl _$$ContactEntityImplFromJson(Map<String, dynamic> json) =>
    _$ContactEntityImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      mac: json['mac'] as String?,
      timestamp: json['timestamp'] as String?,
      creditCard: json['creditCard'] as String?,
    );

Map<String, dynamic> _$$ContactEntityImplToJson(_$ContactEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'city': instance.city,
      'mac': instance.mac,
      'timestamp': instance.timestamp,
      'creditCard': instance.creditCard,
    };
