import 'package:employee_app/models/auth_status.dart';

import 'package:employee_app/models/leaves.dart';
import 'package:employee_app/models/user/user.dart';
import 'package:employee_app/pages/splash_screen.dart';
import 'package:employee_app/provider/app_view_model.dart';
import 'package:employee_app/provider/my_cart_provider.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    schemas: [
      LeavesSchema,
    
      UserSchema,
    ],
    directory: dir.path,
    inspector: true,
  );
  final userdata = await isar.users.where().findFirst();
  print(userdata);

  setupLocator(isar);
  runApp(MyApp(
    isar: isar,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.isar}) : super(key: key);

  final Isar isar;

  final AuthService _auth = locator<AuthService>();
  //final CalendarService _cs = locator<CalendarService>();

  fetchleaves() async {
    final myLeaves = await isar.leavess.where().findAll();
    // print(myLeaves);
    return myLeaves;
  }

  @override
  Widget build(BuildContext context) {
//    _cs.obtainCredentials(isar);
//    _cs.getIndiaHolidays(isar);

    // AppViewModel viewModel = AppViewModel(isar);
    //fetchleaves();
    return MultiProvider(
      providers: [
        StreamProvider<AuthStatus>.value(
          value: _auth.authStatus,
          initialData: AuthStatus(
            status: AUTH_STATUS.VERIFICATION_NOT_STARTED,
            message: 'verification yet to be started',
          ),
        ),
        StreamProvider<AppViewModel>.value(
            value: null, initialData: AppViewModel(isar)),
        ChangeNotifierProvider(create: (_) => MyCart())
      ],
      child: MaterialApp(
        theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
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
        home: const SplashScreen(),
      ),
    );
  }
}
