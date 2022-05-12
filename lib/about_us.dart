import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/states/tabbar_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/images_paths.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBarCubit, TabBarStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return WillPopScope(
          onWillPop: () async {
            return TabBarCubit.get(context).changeIndex(
              0,
            );
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            appBar: AppBar(
              backgroundColor: const Color(0xff2B3549),
              title: const Text(
                "Copyright ©",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              leading: const Icon(Icons.drag_handle),
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Copyright © 2022 - 2022 WE ALIENS AGENCY , LLC. All Rights Reserved. WE ALIENS mark is a registered trademark of WE ALIENS AGENCY, LLC in the EGYPT and UK and other countries. The “WE ALIENS ” logo is a registered trademark of WeAliens.com, LLC in the EGYPT and UK .",
                        style: TextStyle(
                          color: Color(0xff2B3549),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetPath.logoface,
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .07,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset(
                          AssetPath.logoinsta,
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .1,
                        ),
                      ),
                      Image.asset(
                        AssetPath.logotwet,
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width * .1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
