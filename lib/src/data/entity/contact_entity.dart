import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_entity.freezed.dart';
part 'contact_entity.g.dart';


@freezed
class ContactEntity with _$ContactEntity {
  const factory ContactEntity({
    String? name,
    String? email,
    String? city,
    String? mac,
    String? timestamp,
    String? creditCard,
  }) = _ContactEntity;

  factory ContactEntity.fromJson(Map<String, Object?> json)
  => _$ContactEntityFromJson(json);
}