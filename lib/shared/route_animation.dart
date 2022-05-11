import 'package:flutter/material.dart';

class RouteAnimation extends PageRouteBuilder {
  dynamic page;
  RouteAnimation({this.page})
      : super(
      pageBuilder: (mainNavigatorKey, animation, animationTwo) => page,
      transitionDuration: const Duration(milliseconds: 750),
      transitionsBuilder:
          (mainNavigatorKey, animation, animationTwo, child) {
        /// FOR ScaleTransiton
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.ease;
        var tween = Tween(begin: begin, end: end);
        return ScaleTransition(
          scale: tween
              .animate(CurvedAnimation(parent: animation, curve: curve)),
          child: child,
        );
      });
}