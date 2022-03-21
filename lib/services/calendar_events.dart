import 'package:employee_app/models/leaves.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:isar/isar.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarService {
  static const _scopes = [
    CalendarApi.calendarScope,
    CalendarApi.calendarEventsScope
  ];
  final storage = FlutterSecureStorage();
  var clientId = ClientId(
      '325425263810-48ootrrsk65jfsmme71ck085tf1e2h5f.apps.googleusercontent.com',
      '');

  Future<Events> obtainCredentials(Isar event) async =>
      await clientViaUserConsent(
        clientId,
        _scopes,
        _prompt,
      ).then((AuthClient client) async {
        var calendar = CalendarApi(client);
        String calendarId =
            "c_84r0ih1jnlek013pcsn51b0n68@group.calendar.google.com";
        Events result = await calendar.events.list(
          calendarId,
          q: 'kalyan',
        );
        List<Leaves> userLeaves = [];
        print(result.items![0].summary);
        for (var e in result.items!) {
          userLeaves.add(
            Leaves(
                leaveId: e.id ?? '',
                title: e.summary ?? '',
                description: e.description ?? '',
                category: 'VACATION INDIA',
                toDate: e.end!.date ?? DateTime.now(),
                fromDate: e.end!.date ?? DateTime.now()),
          );
        }
        userLeaves.forEach((element) async {
          await event.leavess.where().findAll();
        });

        // for (var element in userLeaves) {
        //   await event.writeTxn((event) async {
        //     await event.leavess.put(element);
        //   });
        // }
        final lea = await event.leavess.where().findAll();
        print('this is lea $lea');
        return result;
      });

  void _prompt(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
