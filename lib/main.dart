import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/firebase_options.dart';
import 'package:bueaty/shared/init_shared.dart';
import 'package:bueaty/views/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/notification_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FirebaseDatabase database = FirebaseDatabase.instance;
  await configigration(messaging, database);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light // status bar color
      ));
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => TabBarCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) =>
              NotificationCubit()..listenToNotifications(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: const Color(0xffFFFFFF),
        buttonTheme: const ButtonThemeData(buttonColor: Color(0xffC6A074)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(
            color: Color(0xff2B3549),
          ),
          selectedItemColor: Color(0xffC69F73),
        ),
      ),
      home: const SplashView(),
    );
  }
}
