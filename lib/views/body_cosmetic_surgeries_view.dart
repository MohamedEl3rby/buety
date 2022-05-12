import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/images_paths.dart';

class BodyCosmeticSurgeriesView extends StatelessWidget {
  const BodyCosmeticSurgeriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Information about body ",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "cosmetic surgeries",
                style: TextStyle(
                  color: Color(0xffC6A074),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Fitness is a gift that all people seek, to feel healthy and confident, also to feel desirous within the community around us. The overweight individual loses all of these advantages and that will surely affect his/her psychological and physical status negatively.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image29,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * 1,
              ),
              const Divider(
                height: 5.0,
                color: Color(0xffC6A074),
                thickness: 14.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Introduction to body cosmetic surgeries: ",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Introduction to body cosmetic surgeries: Obesity is the fat accumulation in the body; everyone has his natural savings of fats which is round 20% of the man body weight and 30% of the woman’s. Passing over these percentage means Obesity. Obesity levels are what the doctor can identify by the patient weight and height and by using specific tables he can also identify the perfect weight for the patient. Obesity comes as a result of imbalance between what the patient eats and how much calories he burns by different activities. Obesity levels goes up when there are no activities to burn food calories, which leads to gaining more fats. Eating too much + lack of activities = Obesity Obesity has many factors, some are based on genetics and some are acquired. Obesity comes as a result of many factors combined together. We can summarize obesity causes as follows: Genetics Eating disorders Hormones disorder After birth obesity Hormones disorder Lack of exercise Menopause Psychological pressure Smoking sudden cessation Negative effects of obesity: High levels of sugar High levels of fats in the blood Arteriosclerosis and Cardiomyopathy High levels of Uric Acid High blood pressure and breathing problems Brain tissue problems Hormones disorders Fatty liver Rheumatism Types of obesity: Obesity can be divided to general obesity and local obesity. General obesity: Caused by fat accumulation in all of the body which lead to unbalanced look and also gaining more weight. Local obesity: Caused by fat accumulation in specific areas of the body that differ according to race, sex, environmental and genetic factors. For women it’s on the hips, above the thigh and below the abdomen but for men it’s in the chest, above the abdomen and below the back.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff2B3549),
                  child: const Center(
                    child: Text(
                      "TREATMENT METHODS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Treatment methods are different according to many factors such as level of obesity, patient activities and how he responds to the treatment in addition to his will and desire to achieve the goal behind the treatment and finally reaching an acceptable level of fitness that satisfies him.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Body reshaping surgeries: ",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This surgery is used if there is any flabby skin that can be fixed to retrieve its natural look and flexibility after liposuction. Liposuction surgery removes the body fats by sucking it out of the body using air sucking device. The perfect patient for this surgery is the one who almost have the perfect weight except he also has unwanted fats, on the hips and thighs that won’t go away using diet or exercise. Liposuction can be very successful choice for those who are in early ages and have fixable skin that allows them to keep its natural look after removing the body fats, but if the skin covering the fats had lost its flexibility or got flabby due to aging or pregnancy then we need to do another surgery to remove the excess skin that cause skin imperfections and making it worse after liposuction. The most famous areas for liposuction are the abdomen, thighs, hips, knees and above the elbows also liposuction can be done to treat neck and face fats specially in early ages where they have more fixable skin or they can also have a face lift to shape the jaws skin for those who has less fixable skin. Tools and methods of liposuction are always improved and developed using latest and safest methods, (called pump up method) we mix saline with local anesthesia and Epinephrine (adrenaline), then inject that mix in the area required before its liposuction and that will reduce the loss of blood and liquid substance during the surgery also the appearance of the skin after the surgery. It also allows removing more fats every time; we don’t suggest this surgery to those who suffer from lung or kidney diseases or any circulatory dysfunction. Breaking fats by: 1- Cannula 2- leaser 3- VASER 4- power assisted liposound Surgical Details: Anesthesia: The surgery is done under general or local anesthesia as what the doctor sees fit. Surgery Duration: This surgery takes from 1 to 3 hours in outpatient clinics under local anesthesia but if the targeted area is large then we can use general anesthesia. Surgery description: The surgeon starts to anesthetize the area then makes an incision to insert the cannula which is a hollow tube that contain very small holes then he begins to move it around to dissolve the fats then sucks it by suction tool and puts it in a collective cup. The surgeon repeats this procedure till he removes enough fats and after the surgery the incision is to be stitched. Convalescence: it continues for weeks. So if you had a liposuction surgery below the abdomen, you will be wearing bandits like a tight belt from 2 to 6 weeks to help with swilling and healing safely, and usually all the symptoms disappear within 1 to 2 weeks but swelling may remain for 6 weeks. Final results: from 45 to 90 days after the surgery. Liposuction with skin lift Intro: This surgery is for the fatty areas that have also a flabby skin and it includes abdomen, thighs and arms tightening also chest lift through incisions located in specific places where it leaves no noticeable scar. Abdomen cosmetic surgery This surgery which is also known as abdomen lift is a surgery that removes the extra flabby skin and fats from the middle and lower abdomen and tightens the abdomen muscles. Partial abdomen cosmetic surgery is more limited which removes all the fats under the umbilicus only. Surgical Details: Anesthesia: this surgery can be under general or local anesthesia. Duration: from 1:30 to 2 Hours. Surgery description: The surgeon starts with making a horizontal incision below the abdomen then another incision around the umbilicus to separate it from the surrounding tissues and some surgeons use that second incision to do liposuction. The surgeon then separates the skin from the abdomen below and lift a larger portion of the skin to see the two separation belts of the abdomen, then puts both sides together and pulls them together by stiches then pulls the skin down to cut the extra skin and fat and stitch the lower incision and around the umbilicus after putting number of drainage tubes to drain any fluids then makes a short horizontal incision to perform the partial abdomen cosmetic surgery. The surgeon may not need to separate the umbilicus from the skin, and then the surgeon pulls the skin downwards and cuts the extra skin and stitches it in its place with drainage tubes. Convalescence: Complete abdomen cosmetic surgery requires staying at the hospital and needs local anesthesia, it also may take from 2 to 4 hours. Partial abdomen cosmetic surgery operates in the outpatient clinics under local anesthesia and gives the patient sleeping pills to sleep and it may take an hour or two. Final results: from 3 to 6 months after the surgery. ",
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
