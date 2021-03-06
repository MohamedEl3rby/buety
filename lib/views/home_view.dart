import 'package:bueaty/constants/buttons.dart';
import 'package:bueaty/constants/constant.dart';
import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/shared/route_animation.dart';
import 'package:bueaty/states/tabbar_states.dart';
import 'package:bueaty/tabbar.dart';
import 'package:bueaty/views/breast_surgeries_article_view.dart';
import 'package:bueaty/views/surgeries_for_men_view.dart';
import 'package:bueaty/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/images_paths.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/header_image_for_tabbar_items.dart';
import 'body_cosmetic_surgeries_view.dart';
import 'cosmetic_without_surgery_view.dart';
import 'doctor_info_view.dart';
import 'genital_cosmetic_surgery_view.dart';
import 'hospital_view.dart';
import 'nose_cosmetic_surgeriesView.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBarCubit, TabBarStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return Scaffold(
          drawer: drawerWidget(context),
          backgroundColor: Theme.of(context).backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                headerImageForTabbaritems(
                  AssetPath.homeDoctor,
                  context,
                  () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(paddingValue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      headerDoctorText(
                        header: 'Pro. Hossam Abolatta',
                      ),
                      const SizedBox(height: 15),
                      articleText(
                        header:
                            "Cosmetic surgery is not considered a luxury anymore; The Cosmetic Surgeon can have an effective role in changing the life of a hopeless depressed woman suffering from obesity, some facial or body defect into a delightful confident person who can face the world confidently and without being shy from her physical appearance. Also a young man with acne scars all over his face or with deformed nose that led to his isolation and lack of confidence can be turned by the art of a cosmetic surgeon into a positive person who can lead a happy enjoyable life.",
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff2B3549),
                    child: const Center(
                      child: Text(
                        "MEDICAL TOPICS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 37.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Button(
                  text: 'Breast Surgeries',
                  onPressed: () {
                    Navigator.of(context).push(
                      RouteAnimation(
                        page: const BreastSurgeriesArticleView(),
                      ),
                    );
                    // TabBarCubit.get(context).changeIndex(6);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                    text: 'Face Surgeries',
                    onPressed: () {
                      Navigator.of(context).push(
                        RouteAnimation(
                          page: const NoseCosmeticSurgeriesView(),
                        ),
                      );
                    },
                  ),
                ),
                Button(
                  text: 'Genital Cosmetic Surger',
                  onPressed: () {
                    Navigator.of(context).push(
                      RouteAnimation(
                        page: const GenitalCosmeticSurgeryView(),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                    text: 'Cosmetic Without Surgery',
                    onPressed: () {
                      Navigator.of(context).push(
                        RouteAnimation(
                          page: const CosmeticWithoutSurgeryView(),
                        ),
                      );
                    },
                  ),
                ),
                Button(
                  text: 'Cosmetic Surgeries For Men',
                  onPressed: () {
                    Navigator.of(context).push(
                      RouteAnimation(
                        page: const SurgeriesForMenView(),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                      text: 'Body Cosmetic Surgeries',
                      onPressed: () {
                        Navigator.of(context).push(
                          RouteAnimation(
                            page: const BodyCosmeticSurgeriesView(),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .11,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff2B3549),
                    child: const Center(
                      child: Text(
                        "MORO INFO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Button(
                  text: 'About Doctor',
                  onPressed: () {
                    Navigator.of(context)
                        .push(RouteAnimation(page: const DoctorInfoView()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                    text: 'Why Us',
                    onPressed: () {
                      TabBarCubit.get(context).changeIndex(1);
                    },
                  ),
                ),
                Button(
                  text: 'Al Jamila Hospital',
                  onPressed: () {
                    Navigator.of(context)
                        .push(RouteAnimation(page: const HospitalView()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                    text: 'Our Centers',
                    onPressed: () {
                      TabBarCubit.get(context).changeIndex(2);
                    },
                  ),
                ),
                Button(
                  text: 'Contact Us',
                  onPressed: () {
                    TabBarCubit.get(context).changeIndex(3);
                  },
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const Divider(
                  height: 30.0,
                  color: Color(0xff2B3549),
                  thickness: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(paddingValue),
                  child: Text(
                    "Beauty is an important aspect of modern life. People today not only want to feel good inside, they also want to look good outside Maybe you are considering enhancing your breasts or your buttocks, or getting rid of that excess of fat, or improving your nose shape, or give a fresher look to your face. Maybe this is too expensive in your country.Or just you look for privacy and discretion. Maybe you are considering having this surgery abroad, but with safety and confidence. ENTER and know all what you have to know about safe and affordable plastic surgery!!",
                    style: TextStyle(
                      color: Color(0xff2B3549),
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07 * 1.5)
              ],
            ),
          ),
        );
      },
    );
  }
}
