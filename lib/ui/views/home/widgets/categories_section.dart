import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/ui/views/home/home_viewmodel.dart';
import 'package:fragrance_app/ui/widgets/common/category_card/category_card.dart';
import 'package:fragrance_app/ui/widgets/common/section_header/section_header.dart';

class CategoriesSection extends StatelessWidget {
  final List<CategoryItem> categories;
  const CategoriesSection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(sectionTitle: 'Our Categories'),
        verticalSpace(10),
        SizedBox(
          height: 230, // Adjust height to fit two rows
          child: GridView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CategoryCard(
                category: categories[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
