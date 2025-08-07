import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;

  const SectionHeader({super.key, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: getTextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: () {
            // Handle "View All" tap
          },
          child: Text(
            'View All',
            style: getTextStyle(
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
