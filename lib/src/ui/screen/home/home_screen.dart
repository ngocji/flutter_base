import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/data/domain/contact.dart';
import 'package:showslinger/src/data/entity/contact_entity.dart';

import '../../../../main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    sl.get<AppSharedPreferences>().set(
        "key",
        Contact(
                name: "Name",
                email: "Email",
                city: "City",
                mac: "mac",
                timestamp: "",
                creditCard: "")
            .toEntity());
  }

  void _updateContact(Contact? data) {
    sl.get<AppSharedPreferences>().set(
        "key",
        Contact(
                name: "Name ${DateTime.now().microsecond}",
                email: "Email 1",
                city: "City 1",
                mac: "mac 1",
                timestamp: "",
                creditCard: "")
            .toEntity(), (entity) {
      return entity?.toDomain();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SmallAppBar(
        title: "Title",
      ),
      body: StreamBuilder<Contact?>(
          stream: sl.get<AppSharedPreferences>().getObjectStream("key", (map) {
            var ob = ContactEntity.fromJson(map);
            return ob.toDomain();
          }),
          builder: (context, snapShort) {
            var data = snapShort.data;
            return Column(
              children: [
                Text("Name: ${data?.name}"),
                Text("Email: ${data?.email}"),
                Text("City: ${data?.city}"),
                Text("Mac: ${data?.mac}"),
                Align(
                  child: AppButton(
                    label: "Create",
                    onPressed: () {
                      _updateContact(data);
                    },
                  ),
                )
              ],
            );
          }),
    );
  }
}
