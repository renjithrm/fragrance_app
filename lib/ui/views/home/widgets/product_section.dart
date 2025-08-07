import 'package:flutter/material.dart';
import 'package:fragrance_app/models/home/collection_model.dart';
import 'package:fragrance_app/ui/widgets/common/product_card/product_card.dart';
import 'package:fragrance_app/ui/widgets/common/section_header/section_header.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  const ProductSection(
      {super.key, required this.title, required this.products});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: products.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(sectionTitle: title),
          SizedBox(
            height: 350, // Height for the horizontal list view
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  image: product.image,
                  name: product.name,
                  price: '${product.currency} ${product.actualPrice}',
                  discountedPrice: '${product.currency} ${product.price}',
                  offerText: product.offer,
                  perUnitLabel: ' ${product.unit}',
                  wishlisted: product.wishlisted,
                  // Optionally, you can pass a dummyColor if needed
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
