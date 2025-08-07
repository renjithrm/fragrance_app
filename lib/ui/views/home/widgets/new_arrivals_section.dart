import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/widgets/common/product_card/product_card.dart';
import 'package:fragrance_app/ui/widgets/common/section_header/section_header.dart';

class NewArrivalsSection extends StatelessWidget {
  const NewArrivalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(sectionTitle: 'New Arrivals'),
        SizedBox(
          height: 350, // Height for the horizontal list view
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ProductCard(
                name: 'Les Eaux De Chaneleau Spray',
                price: 'AED 500.00',
                discountedPrice: 'AED 484.00',
                dummyColor: Colors.pink,
              ),
              SizedBox(width: 5),
              ProductCard(
                name: 'Les Eaux De Chaneleau Spray',
                price: 'AED 500.00',
                discountedPrice: 'AED 484.00',
                dummyColor: Colors.green,
              ),
              SizedBox(width: 5),
              ProductCard(
                name: 'Les Eaux De Chaneleau Spray',
                price: 'AED 500.00',
                discountedPrice: 'AED 484.00',
                dummyColor: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
