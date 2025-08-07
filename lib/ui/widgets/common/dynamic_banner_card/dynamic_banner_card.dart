import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';

class DynamicBannerCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  const DynamicBannerCard({
    super.key,
    required this.imageUrl,
    this.title,
    this.buttonText,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: imageUrl.isNotEmpty,
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          clipBehavior:
              Clip.antiAlias, // Ensures content is clipped to the border radius
          child: Stack(
            children: [
              // Background image with a color overlay for better text contrast.
              Positioned.fill(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.4),
                  colorBlendMode: BlendMode.darken,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Text(
                          'Image not found',
                          style:
                              getTextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Content section with title and button.
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Display the title only if it's not null or empty.
                    if (title != null && title!.isNotEmpty)
                      Text(
                        title!,
                        style: getTextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),

                    // Add some spacing between the title and the button.
                    if ((title != null && title!.isNotEmpty) &&
                        (buttonText != null &&
                            buttonText!.isNotEmpty &&
                            onButtonPressed != null))
                      verticalSpace(35),

                    // Display the button only if the text and onPressed callback are not null.
                    if (buttonText != null &&
                        buttonText!.isNotEmpty &&
                        onButtonPressed != null)
                      ElevatedButton(
                        onPressed: onButtonPressed,
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          buttonText!,
                          style: getTextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
