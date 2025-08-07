import 'package:flutter/material.dart';
import 'package:fragrance_app/models/home/banner_model.dart';
import 'package:fragrance_app/ui/widgets/common/product_tile/product_tile.dart';

class ProductTileSection extends StatelessWidget {
  final List<BannerModel> banner;
  const ProductTileSection({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: banner.isNotEmpty,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: banner.length,
        itemBuilder: (context, index) {
          final item = banner[index];
          return ProductTile(
            imagePath: item.image,
            onShopNowPressed: () {
              // ignore: avoid_print
              print('Shop Now for Banner id: \\${item.id} pressed!');
            },
          );
        },
      ),
    );
  }
}
