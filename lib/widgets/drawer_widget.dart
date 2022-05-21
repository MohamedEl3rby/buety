import 'package:bueaty/shared/route_animation.dart';
import 'package:bueaty/views/breast_surgeries_article_view.dart';
import 'package:flutter/material.dart';

import '../views/body_cosmetic_surgeries_view.dart';
import '../views/cosmetic_without_surgery_view.dart';
import '../views/genital_cosmetic_surgery_view.dart';
import '../views/nose_cosmetic_surgeriesView.dart';
import '../views/notification_view.dart';
import '../views/surgeries_for_men_view.dart';

Widget drawerWidget(BuildContext context) => Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Pro.Hossam Abolatta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          myListTitle(
            'Breast Surgeries',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const BreastSurgeriesArticleView(),
                ),
              );
            },
          ),
          myListTitle(
            'Face Surgeries',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const NoseCosmeticSurgeriesView(),
                ),
              );
            },
          ),
          myListTitle(
            'Genital Cosmetic Surgeries',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const GenitalCosmeticSurgeryView(),
                ),
              );
            },
          ),
          myListTitle(
            'Cosmetic Without Surgery',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const CosmeticWithoutSurgeryView(),
                ),
              );
            },
          ),
          myListTitle(
            'Cosmetic Surgeries For Men',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const SurgeriesForMenView(),
                ),
              );
            },
          ),
          myListTitle(
            'Body Cosmetic Surgeries',
            () {
              Navigator.of(context).push(
                RouteAnimation(
                  page: const BodyCosmeticSurgeriesView(),
                ),
              );
            },
          ),
          myListTitle('Notifications', () {
            Navigator.of(context)
                .push(RouteAnimation(page: const NotificationView()));
          })
        ],
      ),
    );
Widget myListTitle(String title, void Function()? onTap) => ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xffC6A074)),
      ),
    );
