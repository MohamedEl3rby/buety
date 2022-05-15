import 'package:bueaty/constants/constant.dart';
import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/images_paths.dart';

class GenitalCosmeticSurgeryView extends StatelessWidget {
  const GenitalCosmeticSurgeryView({Key? key}) : super(key: key);

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
                child: Text(
                  "Information about Genital",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "cosmetic surgery",
                style: TextStyle(
                  color: Color(0xffC6A074),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Text(
                  "A lot of changes appear on women After pregnancy and giving birth. These changes may reduce the husband’s sexual pleasure; for example, gaining weight that may reach obesity that can be handled by going on a balanced diet and working out. But the most dangerous change is the wide and flaccid muscles of the vagina. 50% of women are suffering this specially after giving birth before by the help of midwives.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                AssetPath.image24,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * 1,
              ),
              const Divider(
                height: 10.0,
                color: Color(0xffC6A074),
                thickness: 10.0,
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
                      "Enjoyment obstacles",
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
                  "The sexual enjoyment of the husband and wife requires a healthy vagina with no flabbiness but unfortunately, women get flabby vaginas after multiple births which hinders sexual enjoyment.",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * 1,
                color: const Color(0xff2B3549),
                child: const Center(
                  child: Text(
                    "LABIOPLASTY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(paddingValue),
                      child: Text(
                        "Who shall have this surgery?",
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
                  "Who shall have this surgery? Patients recommended for this surgery are those who suffer from increased size of the vaginal lips which causes itching, redness and feeling uncomfortable when wearing tight clothes or during sexual intercourse. * Surgery objectives: 1- Cures all deformities caused by previous births 2- Cures all expansions and elongations caused by multiple births. 3- Fixes uneven vaginal lips 4- Reduce pubic area fats * Labioplasty Surgery Procedures 1- General anesthesia 2- Small incision without any scars 3- The surgery doesn’t affect sensation 4- The threads used in the surgery will melt without needing to remove the stitches after the surgery and also no dressing needed. * After the surgery: 1- Checking out of the hospital at the same day of the surgery. 2- Resume normal life and taking shower 1 day after the surgery while sexual intercourse will be allowed 21 days after the surgery. Vaginal Tightening Surgery: Vaginal muscles become loose and flaccid after giving birth which lead to dissatisfaction for both husband and wife during sexual intercourse so this surgery aims to increase the muscles strength by lifting it alongside with supporting fabrics. * What is the anesthesia required? 1- General Anesthesia (GA). 2- Local Anesthesia (L.A.), upon the desire of the patient. * How long does the surgery take? The surgery usually takes about one hour according to its type. * What is the duration of stay in the hospital after the surgery? For most patients, it is enough to stay in the hospital for 4 hours after surgery and to be discharged on the next day. * What about the follow-up and review after the surgery? This is always arranged with the patient before the surgery and the first review is always within 5 days after the surgery date. * What is the expected time for removing the stitches after the surgery? From 7 to 21 days after the surgery. * When can the patient resume normal activities? Full wound healing cannot be achieved in less than 3 months from the date of the surgery, but the patient may exercise some simple daily activities after one week from the surgery date and the sexual intercourse is usually allowed after 4 to 6 weeks. Pre-operative Tips * The patient must inform the surgeon and the anesthesiologist of any health problems suffered by her and any medicines taken by her including vitamins. * The patient must do some investigations such as Complete Blood Count, urine analysis and pregnancy test. * If the patient smokes, she must give up smoking for two weeks at least before the surgery to avoid any problems in wound healing after surgery. After surgery * The patient must have balanced meals during the period before the surgery. * The patient is prohibited from eating or drinking within 10 hours before the surgery. * The patient is prohibited from having a sexual intercourse at the night before the surgery. * The patient is advised to do pelvic floor and vaginal muscle exercises. * The patient is advised to avoid bearing down during defecation. * The patient must avoid both constipation and bearing heavy weights for one month at least after the surgery. * Should a pregnancy occurs after the surgery, the caesarean delivery is preferred in order not to affect the results of the surgery.",
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
