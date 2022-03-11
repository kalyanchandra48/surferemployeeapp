import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/calendar_events.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.asNewInstance();
void setupLocator() {
  locator.registerSingleton(AuthService());
  locator.registerSingleton(CalendarService());
}
