import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_archives/client/nav/nav_bar.dart';
import 'package:web_archives/client/nav/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) =>
          Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Theme.of(context).splashColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  NavBar(),
                ],
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
