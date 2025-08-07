import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/models/home/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: randomLightColor(),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.network(
              category.image,
              width: 50,
              height: 55,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/categories_placeholder.png',
                  width: 50,
                  height: 55,
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 8),
        // The category title
        Text(
          category.name,
          style: getTextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
