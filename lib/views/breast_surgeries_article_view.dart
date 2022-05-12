import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/images_paths.dart';

class BreastSurgeriesArticleView extends StatelessWidget {
  const BreastSurgeriesArticleView({Key? key}) : super(key: key);

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
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Information about breast surgeries",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "When talking about breast surgeries, we confirm that there are no useful creams, devices, hormones or exercises that can replace surgery which is the only fruitful solution.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image22,
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
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Intro to Breast development",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Woman breasts are a very important sign of her femininity. When the girl reaches the age of ten years, the ovary produces specific hormones that motivate the breasts to grow which determine the breast size. Breasts respond to that hormone differently from a girl to another, that response maybe weak leading to small breasts or it can be strong leading to large breasts. The level of response is based on the father’s and the mother’s genetic components. And through the years, the woman gets pregnant and her breasts grow more after the placenta produces a number of hormones that affect the breast tissue to make it soft and ready for lactation after giving birth. The breasts grow according to the produced amount of milk after labor then the breasts return back to normal which make them flabby and redundant which bothers a lot of women. Losing the beautiful shape of the breasts may negatively affect the woman psychologically, socially or even physically. These changes can be accepted to a limit and if it passes that limit, it becomes unacceptable and then surgery will be needed to reach the beauty standards. To elaborate, every female shall know about the breasts anatomical structure which is fat, skin, glands and no muscles which means there is no exercise can affect the size of the breasts. The truth is that there are some exercises that enhance the back and the chest muscles but those muscles are located behind the breast so it may help partially in the shape of the breast.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .14,
                width: MediaQuery.of(context).size.width * 1,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "BREASTS COSMETIC SURGERIES INCLUDE:",
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
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Breast Augmentation:",
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
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Introduction to the surgery:",
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
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This surgery aims to increase the breast size using silicon implants which are put under the breast tissue or the chest muscles to reach the proper size. There is no age limit for this operation but we recommend it to be performed after the girl’s full physical maturity which is often at the age of 18. For older women there is no age limit but we recommend to be medically fit and healthy to undergo the surgery. Surgery objectives: this surgery is for the women who suffer from: - Small breasts - Flappy breasts after labor or breastfeeding - Asymmetrical breasts Surgical information: Anesthesia: This surgery is performed under Local or general anesthesia as the doctor suggests but general anesthesia is more often used. Surgery duration: about one hour. Surgery description: The proper size of the breast will be drawn then a 3 to 5 cm incision will be made under the breast or around the nipple to put the silicon through it under or above the chest muscle to enlarge the breast. Convalescence: checking out in the same day. Final results: immediately felt but the final appearance will be after 3 weeks. Breast Reduction Intro: It is a very important surgery that a lot of women undergo when they suffer from inappropriate large breasts that don’t fit their body size in addition to the health problems that they may face like neck, shoulder and back pain and that problem appears in females at all ages and it is not related to pregnancy or birth. Surgical information: Anesthesia: This surgery is performed under general anesthesia Surgery duration: about 2 hours. Surgery description: A Keyhole or vertical incision will be made to remove some of the skin and breast tissue to reform the breasts and the nipples properly then the surgeon puts a drainage tube to deal with the blood that maybe produced after the surgery. The wound will be stitched on multiple levels and taped to avoid any scar. The patient will check out from the hospital at the same day four hours after the surgery and the drainage tube will be removed the next day. Convalescence: checking out in the same day and resuming normal life a week after the drainage tube removal. Final results: will appear 3 months after the surgery. Breast Lift (Mastopexy) Intro: Breast Lift is one of the most amazing breast cosmetic surgeries that gives the breasts a natural look. Aging process makes the breasts and the skin loses their natural look, shape and flexibility therefore the breasts are not lifted properly and become flappy. Aging is not the only cause of the flappy breasts but also pregnancy, giving birth and gaining or losing weight therefor the breast Lift surgery is the best choice in these cases. Surgical information: Anesthesia: This surgery is performed under general anesthesia Surgery duration: about 1:30 hour. Surgery description: The proper size of the breast and nipples will be drawn then the flappy skin will be removed using multiple keyhole incisions to reduce the breast diameter then lift the nipples and the breast at the same time. This surgery doesn’t require removing any of the breast tissues but few centimeters of the skin so the breast will remain at the same size with better look. Convalescence: checking out in the same day and resuming normal life 3 days after drainage tube removal. Final results: will appear 6 months after the surgery. Breast Reconstruction Intro: This surgery is to fix congenital malformation that prevents breasts from growing at all after puberty or to rebuild the breasts after mastectomy to cure breast cancer. In case of breast cancer, we will discuss the situation and the proper protocol to use with the oncologist responsible, to develop integrated therapeutic program for the patient. Breast Reconstruction surgery can be done using skin from the lower abdomen, the back or the buttocks of the patient, also we may use artificial skin. There are many factors that can affect that kind of surgeries like the proper time, surgery type, surgery effectiveness after the breast tumor removal and other factors that have to be studied before choosing the perfect therapeutic plan. Surgical information: Anesthesia: This surgery is performed under general anesthesia Surgery duration: from 3 to 5 hour. Convalescence: checking out will be according to the doctor’s instructions, usually it takes from 3 to 5 days to be sure that the skin is in good condition. Final results: 3-6 months after the surgery",
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
