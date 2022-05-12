import '../views/body_cosmetic_surgeries_view.dart';
import '../views/breast_surgeries_article_view.dart';
import '../views/contact_us_view.dart';
import '../views/cosmetic_without_surgery_view.dart';
import '../views/doctor_info_view.dart';
import '../views/genital_cosmetic_surgery_view.dart';
import '../views/home_view.dart';
import 'package:flutter/material.dart';
import '../views/hospital_view.dart';
import '../views/nose_cosmetic_surgeriesView.dart';
import '../views/our_centers_view.dart';
import '../views/surgeries_for_men_view.dart';
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
    case 6:
      {
        return const BreastSurgeriesArticleView();
      }
    case 7:
      {
        return const NoseCosmeticSurgeriesView();
      }
    case 8:
      {
        return const GenitalCosmeticSurgeryView();
      }
    case 9:
      {
        return const CosmeticWithoutSurgeryView();
      }
    case 10:
      {
        return const SurgeriesForMenView();
      }
    case 11:
      {
        return const BodyCosmeticSurgeriesView();
      }
  }
  return Container();
}
