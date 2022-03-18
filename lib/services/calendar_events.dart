import 'package:employee_app/models/leaves.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:isar/isar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';
import 'package:intl/intl.dart';

class CalendarService {
  static const _scopes = [
    CalendarApi.calendarScope,
    CalendarApi.calendarEventsScope
  ];
  var clientId = ClientId(
      '325425263810-48ootrrsk65jfsmme71ck085tf1e2h5f.apps.googleusercontent.com',
      '');

  insert(reason, description, starttime, endtime) async {
    var clientId = ClientId(
        '325425263810-48ootrrsk65jfsmme71ck085tf1e2h5f.apps.googleusercontent.com');
    await clientViaUserConsent(
      clientId,
      _scopes,
      _prompt,
    ).then((AuthClient client) async {
      var calendar = CalendarApi(client);
      String calendarId = "kalyan@surfboard.se";
      Event event = Event();
      event.summary = reason;
      event.description = description;
      DateFormat dateFormat = DateFormat("dd MMMM yyyy HH:mm");
      DateTime startdate = dateFormat.parse(starttime);
      DateTime enddate = dateFormat.parse(endtime);
      print(startdate);
      print(enddate);
      EventDateTime start = new EventDateTime();
      start.dateTime = startdate;
      start.timeZone = "GMT+05:30";
      event.start = start;
      EventDateTime end = new EventDateTime();
      end.dateTime = enddate;
      end.timeZone = "GMT+05:30";
      event.end = end;
      try {
        calendar.events.insert(event, calendarId).then((value) {
          print("ADDEDDD_________________${value.status}");
          if (value.status == "confirmed") {
            log('Event added in google calendar');
          } else {
            log("Unable to add event in google calendar");
          }
        });
      } catch (e) {
        log('Error creating event $e');
      }
    });
  }

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
        for (var element in userLeaves) {
          await event.writeTxn((event) async {
            await event.leavess.put(element);
          });
        }
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
