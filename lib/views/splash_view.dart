import 'package:bueaty/constants/images_paths.dart';
import 'package:bueaty/shared/route_animation.dart';
import 'package:flutter/material.dart';
import '../tabbar.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          RouteAnimation(
            page: const TabbBarView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B3549),
      body: Center(
        child: Image.asset(AssetPath.splashImage),
      ),
    );
  }
}
