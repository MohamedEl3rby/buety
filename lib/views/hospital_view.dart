import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../constants/images_paths.dart';

class HospitalView extends StatelessWidget {
  const HospitalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return TabBarCubit.get(context).changeIndex(0);
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AssetPath.hopstialImage,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'More information about Al Jamila Hospital',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff2B3549),
                    fontWeight: FontWeight.w300,
                    fontSize: 27,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.whyUsCenterPhoto,
                height: MediaQuery.of(context).size.height * .25,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "Cosmetic surgery and leaser unit\n\nAl Jamila Hospital is considered as academy for the latest cosmetic surgery techniques around the world and it also considered one of the biggest cosmetic hospitals in Egypt and the middle east.",
                  style: TextStyle(
                    color: Color(0xff2B3549),
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                color: const Color(0xffF4F4F4),
                height: MediaQuery.of(context).size.height / 0.88,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(paddingValue),
                      child: Text(
                        'Al Jamila Hospital provides medical services in the field of cosmetic surgery, obesity, body carving and leaser according to international standards and the latest researches.\nAl Jamila Hospital has the best medical staff at the highest level of efficiency and that to guarantee the best medical service before and after the operation.',
                        style: TextStyle(
                          color: Color(0xff2B3549),
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          for (int i = 1; i < 6; i++)
                            SizedBox(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'images/Image10$i.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .2,
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Image.asset(
                                      'images/Image10$i.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .2,
                                    ),
                                  ),
                                ],
                              ),
                              height: MediaQuery.of(context).size.height * .15,
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07 * 1.5)
            ],
          ),
        ),
      ),
    );
  }
}
