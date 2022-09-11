import 'package:flutter/material.dart';
import 'package:web_archives/client/nav/nav_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final Function callback;
  final Color color;
  const DrawerItem(
    IconData help, {
    Key? key,
    IconData? videocam,
    required this.title,
    required this.callback,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          NavBarItem(
            title: title,
            callback: callback,
            color: color,
          ),
        ],
      ),
    );
  }
}
