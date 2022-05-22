import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const Button({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: Container(
              height: MediaQuery.of(context).size.height * .075,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                color: const Color(0xffC6A074),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onPressed: onPressed,
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height * .075) / 1.9,
            child: Container(
              width: (MediaQuery.of(context).size.width * .85) / 1.5,
              height: (MediaQuery.of(context).size.height * .075) / 2,
              decoration: const BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextF extends StatelessWidget {
  final String hint;
  bool isMessage;
  final TextEditingController textEditingController;
  TextF({
    Key? key,
    required this.hint,
    required this.isMessage,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 25, bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
            ),
            maxLines: isMessage ? 10 : 1,
          ),
        ),
      ),
    );
  }
}

class ContainerDetails extends StatelessWidget {
  final String address;
  final List<String> phoneNumber;
  final List<String> phoneNumber2;
  final String mail;
  final void Function() onTapAddress;

  const ContainerDetails({
    Key? key,
    required this.address,
    required this.mail,
    required this.phoneNumber2,
    required this.onTapAddress,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * .38,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffC6A074),
              Color(0xffD8B894),
            ],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * .015,
                  // ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: onTapAddress,
                        child: Text(
                          address,
                          //
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.local_phone,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < phoneNumber.length; i++)
                            GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(Uri.parse(
                                    'tel:${phoneNumber[i].replaceAll('', '').replaceAll('(', '').replaceAll(')', '')}'))) {
                                  throw 'Could not launch ';
                                }
                              },
                              child: Text(
                                phoneNumber[i],
                                //
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone_android,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < phoneNumber2.length; i++)
                            GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(Uri.parse(
                                    'tel:${phoneNumber2[i].replaceAll('', '').replaceAll('(', '').replaceAll(')', '')}'))) {
                                  throw 'Could not launch ';
                                }
                              },
                              child: Text(
                                phoneNumber2[i],
                                //
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.mail,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () async {
                          const String _url =
                              'mailto:dr@drhossam.com?subject=Hai&body=Hello';
                          if (!await launchUrl(Uri.parse(_url))) {
                            throw 'Could not launch $_url';
                          }
                        },
                        child: Text(
                          mail,
                          //
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
