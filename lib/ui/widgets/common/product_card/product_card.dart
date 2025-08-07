import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/app_colors.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';

class ProductCard extends StatelessWidget {
  final String? image;
  final String name;
  final String price;
  final String discountedPrice;
  final MaterialColor? dummyColor;

  const ProductCard({
    super.key,
    this.image,
    required this.name,
    required this.price,
    required this.discountedPrice,
    this.dummyColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: kcCardBorderColor)),
        elevation: 0,
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: image != null
                        ? Image.network(
                            image!,
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return _buildDummyImage();
                            },
                          )
                        : _buildDummyImage(),
                  ),
                  verticalSpace(12),
                  Text(
                    name,
                    style: getTextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    price,
                    style: getTextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  verticalSpace(2),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: discountedPrice,
                          style: getTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' per Dozen',
                          style: getTextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            foregroundColor: Colors.black,
                            side: const BorderSide(color: kcOutlineBtnBorder),
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            'RFQ',
                            style: getTextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kcRedElevatedBtnColor,
                              shape: const StadiumBorder(),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 6)),
                          child: Text(
                            'Add to Cart',
                            style: getTextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: const BoxDecoration(
                  color: kcCardOfferBgColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: const Text(
                  '40% OFF',
                  style: TextStyle(
                    color: kcCardOfferTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.favorite_border),
                color: Colors.black,
                padding: EdgeInsets.zero,
                style:
                    IconButton.styleFrom(backgroundColor: Colors.transparent),
                iconSize: 22,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDummyImage() {
    final color = dummyColor ?? Colors.pink;
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color[100]!,
            color[200]!,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_drink,
              size: 48,
              color: color[600],
            ),
            const SizedBox(height: 8),
            Text(
              'PERFUME',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color[700],
              ),
            ),
            Text(
              'MOCKUP',
              style: TextStyle(
                fontSize: 12,
                color: color[600],
              ),
            ),
            Text(
              'VECTOR TEMPLATE',
              style: TextStyle(
                fontSize: 10,
                color: color[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
