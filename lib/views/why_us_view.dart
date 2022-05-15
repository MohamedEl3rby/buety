import 'package:bueaty/constants/images_paths.dart';
import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../widgets/articles_divider.dart';

class WhyUsView extends StatelessWidget {
  const WhyUsView({Key? key}) : super(key: key);

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
            children: [
              Image.asset(
                AssetPath.whyUsDoctorPhoto,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Why Us',
                  style: TextStyle(
                    color: Color(0xff2B3549),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Cosmetic surgeries became a necessity not just luxury that choosing the right surgeon and the right center are very important decisions in the journey after beauty. And with the increasing popularity of cosmetic surgeries, some doctors and centers, of all fields, started to focus their advertising and marketing campaigns only on the profit without caring about the clients’ expectations and satisfaction.',
                  style: TextStyle(
                    color: Color(0xff2B3549),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xffC6A074),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'That leads us to the question:\n why us? And what distinguishes us from others?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'First: Prof. Dr. Hossam AbolAtta',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'He is one of the best and most efficient cosmetic surgeons in Egypt and the middle east. He published dozens of research papers and articles in international medical references specialized in cosmetic surgeries. He is one of the first surgeons who used endoscopy in forehead lift surgeries',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.infoDoctorCert,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'He also operate',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 35,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.numberPhoto,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'He also trained dozens of Egyptian and non-Egyptian doctors to perform cosmetic surgeries following the modern international standards.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              articlesDivider(),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Second: Al Jamila Hospital',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Al Jamila Hospital is an academy for the latest cosmetic surgery techniques around the world and it is also considered one of the biggest cosmetology hospitals in Egypt and the middle east. It also provides medical services in fields of cosmetic surgeries, obesity, body carving and laser according to the international quality standards and the latest scientific researches.',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.whyUsCenterPhoto,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Al Jamila Hospital is equipped with the latest medical devices and has the latest technology in cosmetic surgeries, it also has A class wards that guarantee comfort to our patients and their relatives.',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              articlesDivider(),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Third: our team',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Prof. Hossam AbolAtta’s team consists of highly experienced and talented assistant doctors under his supervision to ensure the best medical care for our patients',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.whyUsFamilyPhoto,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Our team also has consultants and specialists anesthesiologists at the highest level of efficiency to ensure the safety of our patients and to provide life support during operations and pain control. Additionally, our team has well trained nursing staff to follow up on our patients before and after the operation. On the other hand, our management staff is working to facilitate all procedures related to Prof. Hossam’s centers reservations for operations along with all administrative procedures to provide the best service.',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              articlesDivider(),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Fourth: Our beautiful Egypt',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Egypt is well known for those who love traveling and entertainment not only for its Pharaonic and Islamic monuments, but also due to its spectacular geographical location and its good weather in summer and winter',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.whyUsPirmayPhoto,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  'Its special location attracts all those who seek beauty, Egypt is also famous for the efficiency of its doctors and its good reputation in the medical field. Egypt is one of the most accessible countries to travel to with low expenses.',
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07 * 1.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
