import 'package:employee_app/provider/app_view_model.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/calendar_events.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

GetIt locator = GetIt.asNewInstance();
void setupLocator(Isar isar) {
  locator.registerSingleton(AuthService());
  locator.registerSingleton(CalendarService());
  locator.registerSingleton(AppViewModel(isar));
}
