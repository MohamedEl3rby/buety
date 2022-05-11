import 'package:flutter/material.dart';

import 'constants/buttons.dart';
import 'constants/images_paths.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height*.45,
              width: MediaQuery.of(context).size.width,
            ),
            const Text("Contact Us",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 25.0,fontWeight: FontWeight.bold),),
             Row(
               mainAxisAlignment:MainAxisAlignment.start,
               children: [
                 Column(
                    children: [
                      Image.asset(
                        AssetPath.mobilelogo,
                        height: MediaQuery.of(context).size.height*.2,
                        width: MediaQuery.of(context).size.width*.2,
                      ),
                      Image.asset(
                        AssetPath.message,
                        height: MediaQuery.of(context).size.height*.2,
                        width: MediaQuery.of(context).size.width*.2,
                      ),
                      Image.asset(
                        AssetPath.world,
                        height: MediaQuery.of(context).size.height*.2,
                        width: MediaQuery.of(context).size.width*.2,
                      ),
                    ],
                  ),
               ],
             ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetPath.logoface,
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.width*.25,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    AssetPath.logoinsta,
                    height: MediaQuery.of(context).size.height*.25,
                    width: MediaQuery.of(context).size.width*.25,
                  ),
                ),
                Image.asset(
                  AssetPath.logotwet,
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.width*.25,
                ),
              ],
            ),
            TextF(),
            TextF(),
            TextF(),
            TextF(),

            Padding(
              padding: const EdgeInsets.only(right: 25.0,left: 25,bottom: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height*.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .86,
                decoration: const BoxDecoration(
                  color: Color(0xff2B3549),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
