import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/ui/views/home/home_viewmodel.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryItem category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: category.color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/categories_placeholder.png',
              width: 50,
              height: 55,
            ),
          ),
        ),
        const SizedBox(height: 8),
        // The category title
        Text(
          category.title,
          style: getTextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
