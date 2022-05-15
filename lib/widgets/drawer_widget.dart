import 'package:bueaty/shared/route_animation.dart';
import 'package:bueaty/views/breast_surgeries_article_view.dart';
import 'package:flutter/material.dart';

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
          myListTitle('Breast Surgeries', () {
            Navigator.of(context)
                .push(RouteAnimation(page: const BreastSurgeriesArticleView()));
          }),
          myListTitle('Face Surgeries', () {}),
          myListTitle('Genital Cosmetic Surgeries', () {}),
          myListTitle('Cosmetic Without Surgery', () {}),
          myListTitle('Cosmetic Surgeries For Men', () {}),
          myListTitle('Body Cosmetic Surgeries', () {})
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
