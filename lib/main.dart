import 'package:employee_app/models/auth_status.dart';
import 'package:employee_app/pages/login_page/login_page.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/calendar_events.dart';
import 'package:employee_app/services/it_request.dart';
import 'package:employee_app/services/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CalendarService.fetchCalendarUpdates();
  await ITRequestService.postITRequest();
  await ITRequestService.getITRequestType();

  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService _auth = locator<AuthService>();

    return MultiProvider(
      providers: [
        StreamProvider<AuthStatus>.value(
          value: _auth.authStatus,
          initialData: AuthStatus(
            status: AUTH_STATUS.VERIFICATION_NOT_STARTED,
            message: 'verification yet to be started',
          ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
            pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          },
        )),
        debugShowCheckedModeBanner: false,
        title: 'Employee App',
        // onGenerateRoute: (value) {
        //   if (value.name == '/PersonalDetails') {
        //     return PageRouteBuilder(
        //       transitionDuration: const Duration(milliseconds: 200),
        //       pageBuilder: (_, __, ___) => PersonalDetailPage(),
        //       transitionsBuilder: (_, anim, __, child) {
        //         return FadeTransition(opacity: anim, child: child);
        //       },
        //     );
        //   }
        //   if (value.name == '/GeneralDetails') {
        //     return PageRouteBuilder(
        //       transitionDuration: const Duration(milliseconds: 200),
        //       pageBuilder: (_, __, ___) => GeneralDetailsPage(),
        //       transitionsBuilder: (_, anim, __, child) {
        //         return FadeTransition(opacity: anim, child: child);
        //       },
        //     );
        //   }
        // },
        //home: const BottomNav(),
        home: LoginPage(),
      ),
    );
  }
}
