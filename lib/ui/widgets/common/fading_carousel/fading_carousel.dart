import 'package:flutter/material.dart';
import 'package:fragrance_app/models/home/carousel_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fragrance_app/ui/widgets/common/fading_carousel/fading_carousel_model.dart';
import 'package:stacked/stacked.dart';

class FadingCarousel extends StackedView<FadingCarouselModel> {
  final List<CarouselItem> images;
  const FadingCarousel({super.key, required this.images});

  @override
  Widget builder(
    BuildContext context,
    FadingCarouselModel viewModel,
    Widget? child,
  ) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }
    return ViewModelBuilder.reactive(
      builder: (context, _, child) {
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
                imageUrl: images[viewModel.currentIndex].image,
                key: ValueKey<String>(images[viewModel.currentIndex].image),
                fit: BoxFit.cover,
                width: double.infinity,
                errorWidget: (context, url, error) => Container(
                  color: Colors.blueGrey,
                  child: const Center(
                    child:
                        Icon(Icons.broken_image, color: Colors.white, size: 40),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => FadingCarouselModel(),
    );
  }

  @override
  void onViewModelReady(FadingCarouselModel viewModel) =>
      viewModel.changeIndex(images);

  @override
  FadingCarouselModel viewModelBuilder(
    BuildContext context,
  ) =>
      FadingCarouselModel();
}
