import 'package:flutter/material.dart';

import 'constants/images_paths.dart';

class FivthScreen extends StatelessWidget {
  const FivthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetPath.rectangle,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Information about cosmetic",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 21,fontWeight: FontWeight.bold,
              ),),
            ),
            const Text("surgeries for men",style: TextStyle(
              color: Color(0xffC6A074),fontSize: 21,fontWeight: FontWeight.bold,
            ),),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Beauty is everyone’s right including men and they have big share of cosmetic surgeries nowadays.",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 16,
              ),),
            ),
            Image.asset(
              AssetPath.image28,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width*1,
            ),
            const Divider(
              height: 5.0,
              color: Color(0xffC6A074),
              thickness: 14.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Intro:",style: TextStyle(
                      color: Color(0xff2B3549),fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" Men have breast glands which are touchable, precise and solid, located under the nipples in both breasts causing no symptoms but if its diameter exceeds 2 cm and the breast began to be noticeable, then it will be diagnosed as Gynecomastia Surgical Details: Anesthesia: The surgery is done under general or local anesthesia as what the patient desires. Surgery Duration: This surgery takes from 1 to 1:30 hour. Surgery Description: It is a simple surgery with very few problems especially after the invention of Liposuction technology that saved a lot of young men from excision surgeries problems such as scars, excavated breast problems, uneven breasts, nipples immersion and deformities. Liposuction helped a lot in curing these symptoms specially first and second degrees of Gynecomastia. Extreme cases that include an extreme flabbiness require having the excess skin removed with unnoticeable scars in most cases. All of those are one day surgeries in which the patent returns back home after few hours and goes back to his work few days after the surgery but also continues to wear the medical belt for couple of weeks and exercises his chest muscles. Gynecomastia is no longer a problem as it was before, just choosing the right surgeon. Convalescence: checking out at the same day.",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 16,
              ),),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Hair care and baldness treatment",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 21,fontWeight: FontWeight.bold,
              ),),
            ),
            Image.asset(
              AssetPath.image27,
              height: MediaQuery.of(context).size.height*.5,
              width: MediaQuery.of(context).size.width*1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Intro:",style: TextStyle(
                      color: Color(0xff2B3549),fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" Hair beauty gives the face a pretty touch and gives the person a clear noticeable feature therefor we suffer when we find negative symptoms on it which can lead to psychological and sociological problems that we seek medical advice to cure whether hair loss or baldness. There are many reasons for hair loss; genetic reasons or acquired reasons, some of them may be temporary or permanent and they also may reduce hair density or cause baldness. Baldness surgery: There are many ways and methods to cure baldness but it’s difficult to find a fabric similar to the scalp fabric in any other part of the body therefor we need to find a suitable fabric without causing baldness in other parts of the body. We can use the undamaged fabrics in bald areas and that happens if we have enough fabrics for the changes required or otherwise we have to use artificial hair by planting it or by using it as a wig. We can summarize baldness treatment methods as follows: Modern methods for hair implanting using needles: This method is based on taking layer of skin from the back of the scalp and closing the wound completely leaving no trace, then we cut that layer into very thin pieces to be put on special needles to be planted in the bald areas very close to each other leaving no trace also these needles can be used for hair implanting in other places like mustache, beard, eyebrows and eyelashes. Hair implanting using Omni graft device: It is a modern method in which the device sucks the hair from the back of the scalp to implant it in the bald areas at the same time. This is a fast modern method in which can implant a lot of hair just in one session. Natural hair implant: The idea of hair transplantation is based on transferring the hair from a hairy area to a bald area, hair implant methods have been greatly developed over the last twenty years, it started with taking hair from the back of the scalp and planting it in the bald areas after making similar holes in it, those methods were improved by modern technology to achieve its goal of distributing the hair in the bald areas without leaving any traces in any part of the scalp. Tissue expansion: It is a special medical balloon that is to be implanted under the hairy areas of the scalp to be expanded gradually till it reaches the proper size then we use the extra skin to replace the bald areas and this method was the basic method of hair transplant until the development of the new hair transplantation techniques, now it’s only used in case of burns or scalp diseases that lead to hair loss along with partial damage of the scalp. Artificial hair implant: This method is based on injecting artificial hair fabrics in the bald areas and testing the proper color compared to the normal hair color, also choosing suitable length for the patient. It is a fact that there are some side effects for this method therefor we don’t use it unless it is our last option specially in the case of complete baldness where there is no place to get natural hair from or in case of old burns in the scalp.",style: TextStyle(
                color: Color(0xffC6A074),fontSize: 16,
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
