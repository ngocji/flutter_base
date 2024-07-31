import 'package:flutter_network/flutter_network.dart';
import 'package:showslinger/src/data/domain/contact.dart';
import 'package:showslinger/src/data/entity/contact_entity.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<List<Contact>> getContacts() async {
    try {
      final response = await dio.get('/contacts.json');
      var listData = response.data as List;
      // todo cache json if need
      return listData
          .map((json) => ContactEntity.fromJson(json))
          .map((entity) => entity.toDomain())
          .toList();
    } on DioException catch (e) {
      // todo handler error exception
      return [];
    }
  }
}
