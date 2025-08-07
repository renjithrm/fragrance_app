import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/widgets/common/product_tile/product_tile.dart';

class ProductTileSection extends StatelessWidget {
  const ProductTileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // First ProductTile widget.
        Expanded(
          child: ProductTile(
            imagePath:
                'https://i.pinimg.com/736x/1b/dc/a5/1bdca5d0dd3ce9c02ee514d9039b07bc.jpg', // Placeholder image URL
            onShopNowPressed: () {
              // ignore: avoid_print
              print('Shop Now for Product 1 pressed!');
            },
          ),
        ),
        const SizedBox(width: 16),
        // Second ProductTile widget.
        Expanded(
          child: ProductTile(
            imagePath:
                'https://i.pinimg.com/736x/89/22/cb/8922cbb32be1f2d5c6ef3edd1ee26c97.jpg', // Placeholder image URL
            onShopNowPressed: () {
              // ignore: avoid_print
              print('Shop Now for Product 2 pressed!');
            },
          ),
        ),
      ],
    );
  }
}
