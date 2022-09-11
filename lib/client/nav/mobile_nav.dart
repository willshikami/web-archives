import 'package:flutter/material.dart';
import 'package:web_archives/client/widgets/logo.dart';
import 'package:web_archives/client/widgets/custom_container.dart';

class MobileNavigation extends StatelessWidget {
  const MobileNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Logo(),
          IconButton(
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              Icons.menu,
              size: 36,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ],
      ),
    );
  }
}
