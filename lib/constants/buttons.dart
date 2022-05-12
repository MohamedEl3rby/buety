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
  const ContainerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
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
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                const Icon(
                  Icons.location_on,
                  size: 40,
                  color: Color(0xffFFFFFF),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                const Icon(
                  Icons.local_phone,
                  size: 40,
                  color: Color(0xffFFFFFF),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                const Icon(
                  Icons.phone_android,
                  size: 40,
                  color: Color(0xffFFFFFF),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                const Icon(
                  Icons.mail,
                  size: 40,
                  color: Color(0xffFFFFFF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
