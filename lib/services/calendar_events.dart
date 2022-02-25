import 'dart:convert';
import 'package:http/http.dart' as http;

class CalendarService {
  static Future<dynamic> fetchCalendarUpdates() async {
    final response = await http.get(Uri.parse(
        'https://www.googleapis.com/calendar/v3/calendars/c_84r0ih1jnlek013pcsn51b0n68@group.calendar.google.com/events'));

    var mapData = [];
    print(response.statusCode);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      print(json);
      print('hello');
    }
    return mapData;
  }
  // Future<http.Response> fetchAlbum() {
  //   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  // }
}
