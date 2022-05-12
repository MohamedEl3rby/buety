import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light // status bar color
      ));

  runApp(
    BlocProvider(
      create: (BuildContext context) => TabBarCubit(),
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
