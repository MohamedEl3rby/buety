import 'package:flutter/material.dart';

import 'constants/buttons.dart';
import 'constants/images_paths.dart';

class CentersScreen extends StatelessWidget {
  const CentersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetPath.rectangleblack,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("A group of centers and hospitals Prof. Dr. Hossam Abol Atta",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 22,fontWeight: FontWeight.bold,
            ),),
             ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("While cosmetic surgery is necessary and not a luxury, it is considered a step to choose the surgeon and the appropriate center one of the most important steps in the search for beauty if not the most important. With the increasing number of cosmetic surgeries, some centers and doctors have taken their various expertise and specialization to intensify advertising and marketing for profit without considering the extent of customer satisfaction and achieving their ambitions. Therefore, we at - Hossam Abou El Atta Hospitals and Centers - we guarantee you (God willing) the highest standards of quality, efficiency and effectiveness as we are always working and continuity to keep up with the latest developments in the world of plastic surgery.",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 16,
              ),),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff2B3549),
              child: const Center(
                child: Text("EL-MAADI BRANCH",style: TextStyle(
                  color: Color(0xffC6A074),fontSize: 25,fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Image.asset(
              AssetPath.image70,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            ContainerDetails(),
            SizedBox(
              height: MediaQuery.of(context).size.height*.08,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff2B3549),
              child: const Center(
                child: Text("MISR EL-GEDIDA",style: TextStyle(
                  color: Color(0xffC6A074),fontSize: 25,fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Image.asset(
              AssetPath.image70,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            ContainerDetails(),
            SizedBox(
              height: MediaQuery.of(context).size.height*.08,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff2B3549),
              child: const Center(
                child: Text("AL JAMILA HOSPITAL",style: TextStyle(
                  color: Color(0xffC6A074),fontSize: 25,fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Image.asset(
              AssetPath.image70,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            ContainerDetails(),
            SizedBox(
              height: MediaQuery.of(context).size.height*.08,
            ),

          ],
        ),
      ),
    );
  }
}
