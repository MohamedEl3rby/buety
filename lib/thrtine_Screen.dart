import 'package:flutter/material.dart';

import 'constants/images_paths.dart';

class ThrtineScreen extends StatelessWidget {
  const ThrtineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetPath.rectangle,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            Image.asset(
              AssetPath.image100,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Cosmetic surgery and leaser unit",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 22,
              ),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Al Jamila Hospital is considered as academy for the latest cosmetic surgery techniques around the world and it also considered one of the biggest cosmetic hospitals in Egypt and the middle east.",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 22,
              ),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Al Jamila Hospital provides medical services in the field of cosmetic surgery, obesity, body carving and leaser according to international standards and the latest researches.",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 22,
              ),),
            ),    const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Al Jamila Hospital has the best medical staff at the highest level of efficiency and that to guarantee the best medical service before and after the operation.",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 22,
              ),),
            ),
            GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: [
                Image.asset(
                  AssetPath.image101,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image102,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image103,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image104,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image105,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image106,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image107,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image108,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image109,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),
                Image.asset(
                  AssetPath.image110,
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.4,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
