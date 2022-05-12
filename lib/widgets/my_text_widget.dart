import 'package:flutter/material.dart';

Widget headerDoctorText({required String header}) => Text(
      header,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
Widget articleText({required String header}) => Text(
      header,
      style: const TextStyle(
        fontSize: 15,
        color: Color(0xffC69F73),
        fontWeight: FontWeight.w400,
      ),
    );
Widget articleHeader({required String header}) => Text(
      header,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xff2B3549),
        fontWeight: FontWeight.w600,
      ),
    );
Widget infoText({required String header}) => Text(
      header,
      style: const TextStyle(
          color: Color(0xff2B3549), fontSize: 18, fontWeight: FontWeight.w400),
    );
