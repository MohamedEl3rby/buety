import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:bueaty/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/buttons.dart';
import '../constants/constant.dart';
import '../constants/images_paths.dart';

class ContactUsView extends StatelessWidget {
  ContactUsView({
    Key? key,
  }) : super(key: key);
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();
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
              const SizedBox(height: 10),
              const Text(
                "Contact Us",
                style: TextStyle(
                  color: Color(0xff2B3549),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage(AssetPath.mobilelogo),
                              size: 30,
                            ),
                            const SizedBox(width: 12),
                            infoText(header: '(+2) 0106 855 6666')
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage(AssetPath.message),
                              size: 30,
                            ),
                            const SizedBox(width: 12),
                            infoText(header: 'info@drhossam.com')
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage(AssetPath.world),
                              size: 30,
                            ),
                            const SizedBox(width: 12),
                            infoText(header: 'www.drhossam.com')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetPath.logoface,
                    //    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Image.asset(
                    AssetPath.logoinsta,
                    //  height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Image.asset(
                    AssetPath.logotwet,
                    //    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextF(
                  hint: 'Full Name',
                  textEditingController: fullName,
                  isMessage: false),
              TextF(
                  hint: 'Phone Number',
                  textEditingController: phoneNumber,
                  isMessage: false),
              TextF(
                  hint: 'Email Address',
                  textEditingController: email,
                  isMessage: false),
              TextF(
                  hint: 'Subject',
                  textEditingController: subject,
                  isMessage: false),
              TextF(
                hint: 'Message',
                textEditingController: message,
                isMessage: true,
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(right: 25.0, left: 25, bottom: 15.0),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * .3,
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 15.0),
              //       child: TextField(
              //         decoration: const InputDecoration(
              //           hintText: "Message",
              //           border: InputBorder.none,
              //         ),
              //         controller: message,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(paddingValue),
                child: Container(
                  width: MediaQuery.of(context).size.width * .86,
                  decoration: const BoxDecoration(
                    color: Color(0xff2B3549),
                    // borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(paddingValue),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () async {
                      String _url =
                          'mailto:dr@drhossam.com?subject=${subject.text}&body=${'Info:FullName: ${fullName.text}\n PhoneNumber: ${phoneNumber.text}\n'}';
                      if (!await launchUrl(Uri.parse(_url))) {
                        throw 'Could not launch $_url';
                      }
                    },
                    child: const Text("Submit"),
                  ),
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
