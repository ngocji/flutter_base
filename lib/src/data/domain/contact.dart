import 'package:flutter_core/flutter_core.dart';
import 'package:showslinger/src/data/entity/contact_entity.dart';

class Contact extends Equatable {
  final String? name;
  final String? email;
  final String? city;
  final String? mac;
  final String? timestamp;
  final String? creditCard;

  const Contact({
    this.name,
    this.email,
    this.city,
    this.mac,
    this.timestamp,
    this.creditCard,
  });

  @override
  List<Object?> get props => [name, email, city, mac, creditCard];
}

extension ContactExt on Contact {
  ContactEntity toEntity() {
    return ContactEntity(
        name: name,
        email: email,
        city: city,
        mac: mac,
        timestamp: timestamp,
        creditCard: creditCard);
  }
}

extension ContactEntityExt on ContactEntity {
  Contact toDomain() {
    return Contact(
        name: name,
        email: email,
        city: city,
        mac: mac,
        timestamp: timestamp,
        creditCard: creditCard);
  }
}
