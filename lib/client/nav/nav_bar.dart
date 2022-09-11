import 'package:flutter/material.dart';
import 'package:web_archives/client/nav/navbar.dart';
import 'package:web_archives/client/nav/mobile_nav.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileNavigation(),
      tablet: const MainNavBar(),
    );
  }
}
