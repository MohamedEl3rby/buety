import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/buttons.dart';
import '../constants/constant.dart';
import '../constants/images_paths.dart';

class OurCentersView extends StatelessWidget {
  const OurCentersView({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetPath.homeDoctor,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "A group of centers and hospitals Prof. Dr. Hossam Abol Atta",
                  style: TextStyle(
                    color: Color(0xff2B3549),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "While cosmetic surgery is necessary and not a luxury, it is considered a step to choose the surgeon and the appropriate center one of the most important steps in the search for beauty if not the most important. With the increasing number of cosmetic surgeries, some centers and doctors have taken their various expertise and specialization to intensify advertising and marketing for profit without considering the extent of customer satisfaction and achieving their ambitions. Therefore, we at - Hossam Abou El Atta Hospitals and Centers - we guarantee you (God willing) the highest standards of quality, efficiency and effectiveness as we are always working and continuity to keep up with the latest developments in the world of plastic surgery.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Text(
                    "EL-MAADI BRANCH",
                    style: TextStyle(
                      color: Color(0xffC6A074),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image2,
                height: MediaQuery.of(context).size.height * .25,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              ContainerDetails(
                address: 'El-Nasr st, above BLOM Bank \nNew Maadi',
                mail: 'info@drhossam.com',
                phoneNumber: phoneNumberElNasrConstant,
                phoneNumber2: phoneNumber2ElNasrConstant,
                onTapAddress: () async {
                  String _url =
                      'https://www.google.com/maps/dir/30.9763018,31.159573/El-Nasr+st,+above+BLOM+Bank+New+Maadi+lat+and+lang/@30.4772645,31.7381559,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x1458385fb85d8a71:0xae1ccda52109ba10!2m2!1d31.2870413!2d29.9764966';
                  if (!await launchUrl(Uri.parse(_url))) {
                    throw 'Could not launch $_url';
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Text(
                    "MISR EL-GEDIDA",
                    style: TextStyle(
                      color: Color(0xffC6A074),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image70,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              ContainerDetails(
                address:
                    'Borg El-Atebaa, 15\nst.Othman Ibn Affan\nnsalah El-Deen square Misr\nEl-Gedida',
                phoneNumber: phoneNumberMisrConstant,
                phoneNumber2: phoneNumber2MistConstant,
                mail: 'info@drhossam.com',
                onTapAddress: () async {
                  const String _url =
                      'https://www.google.com/maps/dir/30.9763018,31.159573/%D9%85%D8%A4%D8%B3%D8%B3%D8%A9+%D9%85%D8%B5%D8%B1+%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9%D8%8C+15+alexandria+st.%D8%8C+%D8%A7%D9%84%D8%A8%D8%B3%D8%AA%D8%A7%D9%86%D8%8C+%D9%82%D8%B3%D9%85+%D9%85%D8%B5%D8%B1+%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9%D8%8C+%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9%E2%80%AC%E2%80%AD/@30.5383949,31.4541018,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x1458158b705aa39d:0xd054b2b8e3e8780b!2m2!1d31.3290007!2d30.0963475';

                  if (!await launchUrl(Uri.parse(_url))) {
                    throw 'Could not launch $_url';
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Text(
                    "AL JAMILA HOSPITAL",
                    style: TextStyle(
                      color: Color(0xffC6A074),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Image.asset(
                AssetPath.imageX,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              ContainerDetails(
                address:
                    'Al Jamila Hospital, 21\nSt.Masjed Belal from st.9\nEl-Mokattam',
                phoneNumber: phoneNumberHosp,
                phoneNumber2: phoneNumber2Hosp,
                mail: 'info@drhossam.com',
                onTapAddress: () async {
                  const String _url =
                      'https://www.google.com/maps/dir/30.9763018,31.159573/%D9%85%D8%B3%D8%AC%D8%AF+%D8%A8%D9%84%D8%A7%D9%84+%D8%A8%D9%86+%D8%B1%D8%A8%D8%A7%D8%AD%D8%8C+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%B1%D8%AD%D9%8A%D9%85+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D9%84%D9%87%D8%8C+%D8%A7%D9%84%D8%A3%D8%A8%D8%A7%D8%AC%D9%8A%D8%A9%D8%8C+%D9%82%D8%B3%D9%85+%D8%A7%D9%84%D9%85%D9%82%D8%B7%D9%85%D8%8C+%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9%E2%80%AC+11571%E2%80%AD/@30.4963288,31.4578842,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x145838cef8e3630d:0xb222ac53fe7331a4!2m2!1d31.2939681!2d30.0106374';
                  if (!await launchUrl(Uri.parse(_url))) {
                    throw 'Could not launch $_url';
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07 * 1.5)
            ],
          ),
        ),
      ),
    );
  }
}
