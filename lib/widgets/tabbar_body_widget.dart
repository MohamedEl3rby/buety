import '../views/contact_us_view.dart';
import '../views/doctor_info_view.dart';
import '../views/home_view.dart';
import 'package:flutter/material.dart';

Widget tabBarBodyWidget(int currentIndex) {
  switch (currentIndex) {
    case 0:
      {
        return const HomeView();
      }
    case 3:
      return const ContactUsView();
    case 4:
      {
        return const DoctorInfoView();
      }
  }
  return Container();
}
