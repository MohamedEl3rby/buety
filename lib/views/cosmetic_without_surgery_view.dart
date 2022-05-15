import 'package:bueaty/cubits/tabbar_cubit.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../constants/images_paths.dart';

class CosmeticWithoutSurgeryView extends StatelessWidget {
  const CosmeticWithoutSurgeryView({Key? key}) : super(key: key);

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
                  "Information about ",
                  style: TextStyle(
                    color: Color(0xffC6A074),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Cosmetic Without Surgery",
                style: TextStyle(
                  color: Color(0xffC6A074),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                AssetPath.image25,
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
                      "Botox",
                      style: TextStyle(
                        color: Color(0xffC6A074),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(paddingValue),
                      child: Text(
                        "Treatment Purposes:",
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
                  " Botox is used now to removes wrinkles and relax muscles on the face such as vertical lines due to frown and wrinkles around the eyes. Botox helps to make the skin looks younger without the need to any surgery. Anesthesia: Botox is regarded now one of the most popular small cosmetic treatments and does not need and anesthesia or convalescing. Session Duration: Botox injection does not take more than few minutes. Surgery Description: Botox is given by injection directly into the affected muscles or wrinkles area by using a small needle and the results will appear from 3 to 5 days. Final Result: Botox effect lasts between five and six months in the first time and the results lasts for a longer period due to giving injection repeatedly. Unlike other medicines, Botox rarely cause allergy and in some cases its side effects is limited to local bruises in the injection area. Fat Injection intro: Fat Injection is made in different areas in the body especially the face to improve the appearance of the skin, show the lips and cheeks and reduce wrinkles. The fat is taken from some areas in the body and re-injected in the areas wanted to be modified. Due to absorbing a part of the fat, the surgery must be repeated when necessary. Surgery Purposes: - Treating deep wrinkles. - Treating atrophy in cheeks and lips. - Treating Parry - Romberg syndrome. Surgical Details: Anesthesia: The surgery is done under local anesthesia. Surgery Duration: This surgery takes about 30 minutes. Surgery Description: Drawing the area to be injected, then identifying the area from which the fat will be takes manually by negative pressure injections. The fat is centrifuged and then injected gradually in the area to be injected. After Surgery: 1- An inflammation occurs in the injection site reaction and disappears gradually during days. 2- Using cold compresses in the injection site to treat expected swelling, redness or bruising. 3- A large amount of fat is to be injected in the area because the body absorbs half of the amount during the week. Convalescence: The patient can go back to the work 1 day after the surgery.",
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
