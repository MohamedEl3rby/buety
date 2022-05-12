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
