import 'package:flutter/cupertino.dart';

import '../constants/images_paths.dart';
import '../cubits/tabbar_cubit.dart';
import '../tabbar.dart';

Widget bottomNavWidget(BuildContext context) => Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
        color: Color(0xff2B3549),
        border: Border(
          top: BorderSide(
            width: 5.0,
            color: Color(0xffC69F73),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          containerTabBarLayout(
              image: AssetPath.stethoscope,
              text: 'About Prof.',
              onTap: () {
                TabBarCubit.get(context).changeIndex(0);
              }),
          dividerTabBarLayout(context),
          containerTabBarLayout(
              image: AssetPath.question,
              text: 'Why Us',
              onTap: () {
                TabBarCubit.get(context).changeIndex(1);
              }),
          dividerTabBarLayout(context),
          containerTabBarLayout(
              image: AssetPath.hospital,
              text: 'Our Centers',
              onTap: () {
                TabBarCubit.get(context).changeIndex(2);
              }),
          dividerTabBarLayout(context),
          containerTabBarLayout(
            image: AssetPath.contact,
            text: 'Contact Us',
            onTap: () {
              TabBarCubit.get(context).changeIndex(3);
            },
          ),
        ],
      ),
    );
