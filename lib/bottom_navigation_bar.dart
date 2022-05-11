import 'package:flutter/material.dart';

import 'constants/images_paths.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _currentTabIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    final _kBottomNavigationBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetPath.contact)),label: "one"),
      const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetPath.question)),label: "df"),
      const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetPath.stethoscope)),label: "kgfg"),
      const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetPath.hospital)),label: "gbjklgk"),
    ];
    //
    // final bottomNavBar = BottomNavigationBar(
    //   items: _kBottomNavigationBarItems ,
    //   currentIndex: _currentTabIndex ,
    //   type: BottomNavigationBarType.fixed,
    //   onTap: (int index){
    //     setState(() {
    //       _currentTabIndex = index ;
    //     });
    //   } ,
    // );
    return Container();
  }
}
