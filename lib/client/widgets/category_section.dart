import 'package:flutter/material.dart';
import 'package:web_archives/client/widgets/custom_container.dart';
import 'package:web_archives/client/widgets/empty_category_card.dart';
import 'package:web_archives/setup/colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          children: const <Widget>[
            EmptyCategoryCard(),
            SizedBox(width: 24),
            EmptyCategoryCard(),
          ],
        ),
      ],
    );
  }
}
