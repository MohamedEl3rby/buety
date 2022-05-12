import '../views/contact_us_view.dart';
import '../views/doctor_info_view.dart';
import '../views/home_view.dart';
import 'package:flutter/material.dart';

import '../views/hospital_view.dart';
import '../views/our_centers_view.dart';
import '../views/why_us_view.dart';

Widget tabBarBodyWidget(int currentIndex) {
  switch (currentIndex) {
    case 0:
      {
        return const HomeView();
      }
    case 1:
      {
        return const WhyUsView();
      }
    case 2:
      {
        return const OurCentersView();
      }
    case 3:
      return const ContactUsView();
    case 4:
      {
        return const DoctorInfoView();
      }
    case 5:
      {
        return const HospitalView();
      }
  }
  return Container();
}
