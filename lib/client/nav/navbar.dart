import 'package:flutter/material.dart';
import 'package:web_archives/client/widgets/custom_container.dart';
import 'package:web_archives/client/widgets/logo.dart';
// import 'package:universal_html/js.dart' as js;

class MainNavBar extends StatelessWidget {
  const MainNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Center(
        child: Logo(),
      ),
    );
  }
}
