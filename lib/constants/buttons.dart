import 'package:flutter/material.dart';

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
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .85,
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
            top: (MediaQuery.of(context).size.height * .07) / 1.9,
            child: Container(
              width: (MediaQuery.of(context).size.width * .85) / 1.5,
              height: (MediaQuery.of(context).size.height * .07) / 2,
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
  const TextF({Key? key, required this.hint}) : super(key: key);

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
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerDetails extends StatelessWidget {
  final String address;
  final String phoneNumber;
  final String phoneNumber2;
  final String mail;
  const ContainerDetails({
    Key? key,
    required this.address,
    required this.phoneNumber,
    required this.phoneNumber2,
    required this.mail,
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
                      Text(
                        address,
                        //
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
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
                      Text(
                        phoneNumber,
                        //
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
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
                        Icons.phone_android,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        phoneNumber2,
                        //
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
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
                        Icons.mail,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        mail,
                        //
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
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
