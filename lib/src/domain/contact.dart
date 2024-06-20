import 'package:flutter_core/flutter_core.dart';

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
