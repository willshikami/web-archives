import 'package:flutter/material.dart';
import 'package:web_archives/setup/colors.dart';

class EmptyCategoryCard extends StatelessWidget {
  const EmptyCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 196,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          // border: Border.all(
          //   color: Colors.red,
          //   width: 2.0,
          // ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: const <Widget>[Text('Texxt')],
        ));
  }
}
