import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/states/tabbar_states.dart';
import 'package:bueaty/widgets/bottom_nav_widget.dart';
import 'package:bueaty/widgets/tabbar_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabbBarView extends StatelessWidget {
  const TabbBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBarCubit, TabBarStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return Scaffold(
          bottomNavigationBar: bottomNavWidget(context),
          body: tabBarBodyWidget(TabBarCubit.get(context).currentIndex),
        );
      },
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
  void Function()? onTap,
  required bool isActive,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? Colors.white38 : Colors.transparent,
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
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
      ),
    );
