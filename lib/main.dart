import 'package:bueaty/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light // status bar color
      )); // status bar color
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
