import 'package:flutter/material.dart';

Widget headerImageForTabbaritems(
        String image, BuildContext context, void Function()? onPressed) =>
    Stack(
      alignment: const Alignment(-0.9, -0.7),
      children: [
        SizedBox(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
          ),
        ),
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ],
    );
Widget headerImageForInnerItems(String image, BuildContext context) => Stack(
      alignment: const Alignment(-1, -0.7),
      children: [
        SizedBox(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
          ),
        ),
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    );
