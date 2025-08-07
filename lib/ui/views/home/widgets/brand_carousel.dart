import 'package:flutter/material.dart';
import 'package:fragrance_app/models/home/brand_model.dart';
import 'package:fragrance_app/ui/common/app_colors.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/ui/widgets/common/section_header/section_header.dart';

class BrandCarousel extends StatelessWidget {
  final List<BrandModel> brandData;
  const BrandCarousel({super.key, required this.brandData});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: brandData.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            sectionTitle: 'Shop By Brands',
          ),
          verticalSpace(10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandData.length,
              itemBuilder: (context, index) {
                final brand = brandData[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
                    width: 140,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kcCardBorderColor, width: 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Image.network(
                          brand.image,
                          fit: BoxFit.contain,
                          height: 60, // Adjust image height as needed
                          errorBuilder: (context, error, stackTrace) {
                            // A simple placeholder in case the image fails to load
                            return const Icon(
                              Icons.broken_image,
                              color: Colors.grey,
                              size: 40,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
