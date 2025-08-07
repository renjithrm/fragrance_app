import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';

class ProductTile extends StatelessWidget {
  // The asset path for the product image.
  final String imagePath;
  // The text to display on the button.
  final String buttonText;
  // The callback function to be executed when the button is pressed.
  final VoidCallback onShopNowPressed;

  // The constructor for the ProductTile widget.
  const ProductTile({
    super.key,
    required this.imagePath,
    this.buttonText = "Shop Now",
    required this.onShopNowPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // Gives the card a rounded-corner look.
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Increased for more rounded corners
      ),
      clipBehavior:
          Clip.antiAlias, // Ensures the content respects the border radius.
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // The background image of the product.
          Image.network(
            imagePath,
            fit: BoxFit.cover, // Changed to cover for a more natural look
            height: 260, // Increased height for a more prominent card
            width: double.infinity, // Ensure it fills the card
          ),
          // A semi-transparent overlay to make the text more readable.
          Container(
            height: 100, // Taller overlay for better text readability
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // The "Shop Now" button placed at the bottom.
          Padding(
            padding: const EdgeInsets.only(
                bottom: 24.0), // More space from the bottom
            child: GestureDetector(
              onTap: onShopNowPressed,
              child: Text(
                buttonText,
                style: getTextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.underline, // Underlined text
                  decorationColor: Colors.white,
                  decorationThickness: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
