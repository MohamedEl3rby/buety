import 'package:flutter/material.dart';

import 'constants/images_paths.dart';
import 'home_view.dart';

class TabbBarView extends StatefulWidget {
  const TabbBarView({Key? key}) : super(key: key);

  @override
  _TabbBarViewState createState() => _TabbBarViewState();
}

class _TabbBarViewState extends State<TabbBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const HomeView(),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: const BoxDecoration(
              color: Color(0xff2B3549),
              border: Border(
                top: BorderSide(
                  width: 5.0,
                  color: Color(0xffC69F73),
                ),
                // bottom: BorderSide(
                //   width: 5.0,
                //   color: Color(0xffC69F73),
                // ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                containerTabBarLayout(
                    image: AssetPath.stethoscope, text: 'About Prof.'),
                dividerTabBarLayout(context),
                containerTabBarLayout(
                    image: AssetPath.question, text: 'Why Us'),
                dividerTabBarLayout(context),
                containerTabBarLayout(
                    image: AssetPath.hospital, text: 'Our Centers'),
                dividerTabBarLayout(context),
                containerTabBarLayout(
                    image: AssetPath.contact, text: 'Contact Us'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget dividerTabBarLayout(BuildContext context) => Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: 1,
      color: const Color(0xffC69F73),
    );
Widget containerTabBarLayout({
  required String image,
  required String text,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffC69F73),
            fontSize: 13,
          ),
        ),
      ],
    );
