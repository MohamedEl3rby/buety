import 'package:flutter/material.dart';

import 'constants/images_paths.dart';

class NineScreen extends StatelessWidget {
  const NineScreen({Key? key}) : super(key: key);

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
              child: Text("Dr. Hossam AbolAtta is considered one of the best known cosmetic surgeons in Egypt, he was awarded his degree and finished his training in Ain-Shams university; one of the biggest and oldest Egyptian universities, he also practiced cosmetic surgery in France and Turkey. Dr. Hossam AbolAtta is specialized in cosmetic surgery where face and breast surgeries are among his main interests in which he received intensive training in Paris by Dr. Daniel Marshak; one of the most famous cosmetic surgeons worldwide. Among other things he’s exceptionally skillful in the use of endoscope in face and forehead lift cosmetic surgeries. He is very efficient in tummy tuck, liposuction and body reformation. He is also considered one of the most famous cosmetologists in non-surgical cosmetics. Dr. Hossam AbolAtta and his team are capable of fulfilling your needs with high efficiency and talent.",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 16,
              ),),
            ),
            Image.asset(
              AssetPath.image70,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Academic degrees ",style: TextStyle(
                      color: Color(0xff2B3549),fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Academic degrees of Dr. Hossam AbolAtta ",style: TextStyle(
                      color: Color(0xffC6A074),fontSize: 16.0),),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" Diplomas • Bachelor of Medicine and Surgery from Ain-Shams University, Faculty of medicine. • Master of dynamic nose repair and beautification from Ain-Shams University, Faculty of medicine. • PhD in plastic surgery and laser, Ain-Shams University, Faculty of medicine. Training after Graduation • Department of plastic surgery and burns, Ain-Shams University, Faculty of medicine. • Başkent University, Ankara, Turkey • Department of plastic surgery, Necker Hospital, Paris Scientific Societies • Member of the Egyptian Society of Plastic and Reconstructive Surgeons. • The International Union of Plastic Surgery and reconstruction. • The International Society of Aesthetic Plastic Surgery (ISAPS)",style: TextStyle(
                  color: Color(0xffC6A074),fontSize: 16.0),),
            ),
            const Divider(
              height: 30.0,
              color: Color(0xffC6A074),
              thickness: 14.0,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Professor Hossam Abol Atta ",style: TextStyle(
                    color: Color(0xffC6A074),fontSize: 16.0,fontWeight: FontWeight.bold),),
              ),
            ),
            const Text(" is Accredited by:",style: TextStyle(
                color: Color(0xff2B3549),fontSize: 16.0,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetPath.image30,
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.width*.32,
                ),
                Image.asset(
                  AssetPath.image31,
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.width*.32,
                ),
                Image.asset(
                  AssetPath.image32,
                  height: MediaQuery.of(context).size.height*.25,
                  width: MediaQuery.of(context).size.width*.32,
                ),
              ],
            ),
            const Divider(
              height: 30.0,
              color: Color(0xffC6A074),
              thickness: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                 SizedBox(
                  width: MediaQuery.of(context).size.width*.6,
                  child: const Text("What Prof. Daniel Marshak and some of the patients think about Dr. Hossam",style: TextStyle(
                      color: Color(0xff2B3549),fontSize: 16.0,fontWeight: FontWeight.bold),maxLines: 3,),
                ),
                Image.asset(
                  AssetPath.image33,
                  height: MediaQuery.of(context).size.height*.4,
                  width: MediaQuery.of(context).size.width*.35,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Prof. Daniel Marshak said that “Professor Hossam AbolAtta worked as my first assistant at Necker Hospital and during his work, he showed a great knowledge in the field of cosmetic surgery and a great deal of wisdom in taking medical decisions, moreover he gained a great deal of respect for his patience, knowledge and kindness when dealing with my patients. He was also very punctual and was always taking the best care of my patients. Eventually I want to express my happiness to get the chance to work with him and I highly recommend him”.",style: TextStyle(
                  color: Color(0xffC6A074),fontSize: 16.0,),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Prof. Daniel Marshak",style: TextStyle(
                  color: Color(0xff2B3549),fontSize: 16.0)),
            ),


          ],
        ),
      ),
    );
  }
}
