import 'package:bueaty/fivth_screen.dart';
import 'package:bueaty/fourth_screen.dart';
import 'package:bueaty/second_screen.dart';
import 'package:bueaty/seven_Screen.dart';
import 'package:bueaty/sixth_screen.dart';
import 'package:bueaty/third_screen.dart';
import 'package:bueaty/thrtine_Screen.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'contact_us.dart';
import 'first_screen.dart';
import 'nine_screen.dart';
import 'our_centers.dart';

void main() {
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
        backgroundColor:const Color(0xffFFFFFF),
        buttonTheme:
        const ButtonThemeData(buttonColor: Color(0xffC6A074)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(
            color: Color(0xff2B3549),
          ),
          selectedItemColor: Color(0xffC69F73),
        ),
      ),
      home:const FirstScreen(),
    );
  }
}


