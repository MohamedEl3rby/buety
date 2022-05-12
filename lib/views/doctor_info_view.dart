import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/states/tabbar_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/images_paths.dart';
import '../widgets/articles_divider.dart';
import '../widgets/my_text_widget.dart';

class DoctorInfoView extends StatelessWidget {
  const DoctorInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBarCubit, TabBarStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return WillPopScope(
          onWillPop: () async {
            return TabBarCubit.get(context).changeIndex(0);
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    AssetPath.infoDoctor,
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              "Dr. Hossam AbolAtta is considered one of the best known cosmetic surgeons in Egypt, he was awarded his degree and finished his training in Ain-Shams university; one of the biggest and oldest Egyptian universities, he also practiced cosmetic surgery in France and Turkey.\n\nDr. Hossam AbolAtta is specialized in cosmetic surgery where face and breast surgeries are among his main interests in which he received intensive training in Paris by Dr. Daniel Marshak; one of the most famous cosmetic surgeons worldwide.\n\nAmong other things he’s exceptionally skillful in the use of endoscope in face and forehead lift cosmetic surgeries. He is very efficient in tummy tuck, liposuction and body reformation. He is also considered one of the most famous cosmetologists in non-surgical cosmetics.\n\nDr. Hossam AbolAtta and his team are capable of fulfilling your needs with high efficiency and talent.",
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    AssetPath.infoDoctorCert,
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        articleHeader(header: 'Academic degrees'),
                        articleText(
                            header:
                                'Academic degrees of Dr. Hossam AbolAtta\n'),
                        articleHeader(header: 'Diplomas'),
                        articleText(
                            header:
                                '• Bachelor of Medicine and Surgery from Ain-Shams University, Faculty of medicine.\n• Master of dynamic nose repair and beautification from Ain-Shams University, Faculty of medicine.\n• PhD in plastic surgery and laser, Ain-Shams University, Faculty of medicine.\n'),
                        articleHeader(header: 'Training after Graduation'),
                        articleText(
                            header:
                                '• Department of plastic surgery and burns, Ain-Shams University, Faculty of medicine.\n• Başkent University, Ankara, Turkey\n• Department of plastic surgery, Necker Hospital, Paris\n'),
                        articleHeader(header: 'Scientific Societies'),
                        articleText(
                            header:
                                '• Member of the Egyptian Society of Plastic and Reconstructive Surgeons.\n• The International Union of Plastic Surgery and reconstruction.\n• The International Society of Aesthetic Plastic Surgery (ISAPS)\n')
                      ],
                    ),
                  ),
                  articlesDivider(),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Professor Hossam\n Abol Atta ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffC6A074),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " is Accredited by:",
                    style: TextStyle(
                        color: Color(0xff2B3549),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetPath.image30,
                        height: MediaQuery.of(context).size.height * .17,
                        width: MediaQuery.of(context).size.width * .32,
                      ),
                      Image.asset(
                        AssetPath.image31,
                        height: MediaQuery.of(context).size.height * .17,
                        width: MediaQuery.of(context).size.width * .32,
                      ),
                      Image.asset(
                        AssetPath.image32,
                        height: MediaQuery.of(context).size.height * .17,
                        width: MediaQuery.of(context).size.width * .32,
                      ),
                    ],
                  ),
                  articlesDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      articleHeader(
                          header:
                              ' What Prof. Daniel Marshak\n and some of the patients\n think about Dr. Hossam'),
                      Image.asset(
                        AssetPath.infoDoctorSpe,
                        height: MediaQuery.of(context).size.height * .22,
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Prof. Daniel Marshak said that “Professor Hossam AbolAtta worked as my first assistant at Necker Hospital and during his work, he showed a great knowledge in the field of cosmetic surgery and a great deal of wisdom in taking medical decisions, moreover he gained a great deal of respect for his patience, knowledge and kindness when dealing with my patients. He was also very punctual and was always taking the best care of my patients.\n\nEventually I want to express my happiness to get the chance to work with him and Ihighly\nrecommend him”.",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Prof. Daniel Marshak",
                        style: TextStyle(
                            color: Color(0xff2B3549), fontSize: 16.0)),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07 * 1.5)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
