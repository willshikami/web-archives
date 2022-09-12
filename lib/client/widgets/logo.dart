import 'package:flutter/material.dart';
import 'package:web_archives/routes/router.dart';
import 'package:web_archives/setup/colors.dart';
import 'package:web_archives/setup/responsive.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  bool onMouseHover = false;

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    final isMobileScreen = ResponsiveWidget.isMobileScreen(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.home),
      child: MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        cursor: SystemMouseCursors.click,
        child: const Text(
          'Will\'s Archives',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }

  onEntered(bool onMouseHovered) {
    setState(() {
      onMouseHover = onMouseHovered;
    });
  }
}
