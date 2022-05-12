import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/states/tabbar_states.dart';
import 'package:bueaty/widgets/tabbar_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/images_paths.dart';

class TabbBarView extends StatelessWidget {
  const TabbBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBarCubit, TabBarStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              tabBarBodyWidget(TabBarCubit.get(context).currentIndex),
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
              ),
            ],
          ),
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
      ),
    );
