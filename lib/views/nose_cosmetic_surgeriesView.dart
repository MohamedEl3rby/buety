import 'package:bueaty/constants/constant.dart';
import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/images_paths.dart';

class NoseCosmeticSurgeriesView extends StatelessWidget {
  const NoseCosmeticSurgeriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return TabBarCubit.get(context).changeIndex(0);
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetPath.articleMainPhoto,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Center(
                  child: Text(
                    "Information about face and ",
                    style: TextStyle(
                      color: Color(0xffC6A074),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  " nose cosmetic surgeries",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "The Human is always looking for a pretty and harmonious face with firmer and fresher look. The face is a mirror that reflects the one’s personality, growth levels and age signs that appear later in life according to environmental, climatic and genetic factors, also activities and food.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image23,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * 1,
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
                padding: const EdgeInsets.all(paddingValue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Problems that face cosmetic surgeries can fix:",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "- Deep Wrinkles under the eyes, along the nose and the mouth - Jaws redundant skin - Neck fat - Face abnormalities - Double chin - Scars and burns",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * 1,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      "FACIAL COSMETIC SURGERIES ALSO INCLUDE:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(paddingValue),
                    child: Text(
                      "Rhinoplasty:",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(paddingValue),
                      child: Text(
                        "Intro:",
                        style: TextStyle(
                          color: Color(0xff2B3549),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "The general common idea in our community about rhinoplasty is very restrictive. Rhinoplasty is has been known for downsizing the nose and usually we look at that as a luxury, but actually it’s one of the simplest surgeries in the field of rhinoplasty. Here we will explain in details some of the nose cosmetic surgeries that are necessary in some cases. Rhinoplasty is a surgery that modifies the nose and sometimes we refer to as nose reshaping. This surgery is usually for cosmetic reasons such as enhancing facial harmony, although it also used to stop the breathing disorder that result from nose deformities caused by accidents. Types of nose surgeries: - Nose resizing - Fixing nose width at the bridge or the size and position of the nostrils - Fixing nose visible humps or depressions on the bridge Surgical information: Anesthesia: This surgery is performed under general or local anesthesia as what the doctor sees fit Surgery duration: about 1:30 hour. Surgery description: The surgeon lifts the nose skin, separates it from the nose bones and cartilages and puts a plastic splint on it to keep its shape. Convalescence: checking out 3 hours after the surgery and resuming normal life one week after the surgery Final results: 6 month after the surgery. Forehead and eyebrows lift using endoscopy Intro: The eyebrows usually get redundant due to aging process which leads to deep wrinkles in the forehead so the forehead lift surgery by endoscopy is used as a separate surgery or as a part of face and neck lift surgery. Surgical information: Anesthesia: This surgery is performed under general or local anesthesia as what the doctor sees Surgery duration: from30 min to 1 hour. Surgery description: The surgeon lifts the forehead skin by endoscope through four incisions 2cm each in the scalp. Convalescence: checking out 3 hours after the surgery and resuming normal life one week after the surgery Final results: 6 month after the surgery. Cosmetic Eyelid Surgery Intro: The upper and lower eyelid problem appears usually due to aging, this is not the only problem but also the eye wrinkles affect the vision which may lead to some problems such as permanent headache and in this case the Cosmetic Eyelid Surgery is mandatory. Surgical information: Anesthesia: This surgery is usually performed under local anesthesia Surgery duration: about 1:30 hour for the upper and the lower eyelid. Surgery description: For the upper eyelid, the surgeon makes an incision in the upper eyelid fold above the eyelashes. For the lower eyelid, the surgeon makes an incision under the eyelashes or inside the eyelid without breaking the skin. Convalescence: checking out 3 hours after the surgery and resuming normal life the next day after the surgery. Final results: 45 days after the surgery. Facelift Intro: Wrinkles due to aging are a real problem that faces any woman who is seeking a beautiful youthful look. Despite that wrinkles are imperative, there are many solutions introduced by the modern medicine to reduce the effects of this problem and delay wrinkles appearance. These suggested solutions start from skin creams and anti-wrinkles masks to filler injections, Botox and plasma and ends at face lift surgeries. Surgical information: Anesthesia: This surgery is usually performed under local or general anesthesia according to what the doctor sees Surgery duration: from 3 to 5 hours Surgery description: Hair is held to the back using a rubber tap and cut some of hair curls that are near to the incisions. The incision starts from the hair to above the ears then behind the ears to the scalp. There’s also another small incision under the chin to lift the neck too. Then the surgeon lifts the muscles and the flaccid skin and removes the fats. After lifting the deep layer, he lifts the skin and pulls it toward the ear and removes it then closes the incisions and covers the face to protect it. Convalescence: checking out at the same day although it is preferred for some cases to stay for couple more days in case of swelling. Final results: 6 months after the surgery. Cosmetic chin surgery Intro: The chin is a very important part of the face beauty. Big or small chin can make the face lose its balance and harmony leading to some psychological disorders. Surgical information: Anesthesia: This surgery is usually performed under local or general anesthesia according to what the doctor sees Surgery duration: from 1:30 to 2 hours Surgery description: The surgeon reduces the size of the chin by making an incision in the mouth behind the libs, and break the bones using solid tools then he enhances the chin by pushing its bone forward or by adding an artificial chin. Convalescence: checking out at the same day although it is preferred for some cases to stay for couple more days in case of swelling. The patient shall be wearing the chin collar and eat soft foods for 3 weeks. Final results: 3 months after the surgery. Ear Cosmetic Surgery Intro: This surgery aims to correct ear defects and we prefer to perform it in early ages to avoid any inconvenience. Ears are easy to fix even if it’s fully developed or not. Most of ear cosmetic surgeries performed at the age of 4 to 14. Surgical information: Anesthesia: This surgery is usually performed under local or general anesthesia according to what the doctor sees Surgery duration: from 1:30 to 2 hours Surgery description: This surgery is performed by making an incision behind the ear so the scar will be hidden. The surgeon removes a proper amount of the skin and the cartilage and insert a permanent pole to pull the ear backwards to be in its normal position or just using the pole to lock cartilage in its place without taking anything from it. Convalescence: checking out at the same day Final results: 3 months after the surgery.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
