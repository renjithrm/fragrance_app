import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fragrance_app/models/home/carousel_item.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FadingCarousel extends StatefulWidget {
  final List<CarouselItem> images;
  const FadingCarousel({super.key, required this.images});

  @override
  State<FadingCarousel> createState() => _FadingCarouselState();
}

class _FadingCarouselState extends State<FadingCarousel> {
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    if (widget.images.isNotEmpty) {
      _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % widget.images.length;
        });
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.images.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: CachedNetworkImage(
            imageUrl: widget.images[_currentIndex].image,
            key: ValueKey<String>(widget.images[_currentIndex].image),
            fit: BoxFit.cover,
            width: double.infinity,
            errorWidget: (context, url, error) => Container(
              color: Colors.blueGrey,
              child: const Center(
                child: Icon(Icons.broken_image, color: Colors.white, size: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
