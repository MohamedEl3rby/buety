import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

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
              const ContainerDetails(
                address: 'El-Nasr st, above BLOM Bank \nNew Maadi',
                phoneNumber: '(+2) 02 25 17 4004\n(+2)02 25 17 4091',
                phoneNumber2:
                    '(+2) 0111 855 6666\n(+2) 0106 855 6666\n(+2) 0101 050 4596',
                mail: 'info@drhossam.com',
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
              const ContainerDetails(
                address:
                    'Borg El-Atebaa, 15\nst.Othman Ibn Affan\nnsalah El-Deen square Misr\nEl-Gedida',
                phoneNumber:
                    '(+2) 02 26 910 910\n(+2) 02 25 160 571\n(+2) 02 25 160 572',
                phoneNumber2: '(+2) 0106 855 6666',
                mail: 'info@drhossam.com',
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
              const ContainerDetails(
                address:
                    'Al Jamila Hospital, 21\nSt.Masjed Belal from st.9\nEl-Mokattam',
                phoneNumber: '(+2) 02 25 05 0000',
                phoneNumber2: '(2+) 0111 855 6666\n(2+) 0106 855 6666',
                mail: 'info@drhossam.com',
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
