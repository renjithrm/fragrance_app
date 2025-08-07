import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/ui/views/home/widgets/brand_carousel.dart';
import 'package:fragrance_app/ui/views/home/widgets/categories_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/product_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/product_tile_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/home_shimmer.dart';
import 'package:fragrance_app/ui/widgets/common/app_bar_widget/app_bar_widget.dart';
import 'package:fragrance_app/ui/widgets/common/dynamic_banner_card/dynamic_banner_card.dart';
import 'package:fragrance_app/ui/widgets/common/fading_carousel/fading_carousel.dart';
import 'package:fragrance_app/ui/widgets/common/search_scan_bar/search_scan_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, _, child) {
          return Scaffold(
            appBar: const AppBarWidget(userName: 'James'),
            body: SafeArea(
                child: Column(
              children: [
                const SearchScanBar(),
                Expanded(
                  child: viewModel.isBusy
                      ? const HomeShimmer()
                      : ListView.separated(
                          padding: const EdgeInsets.all(12.0),
                          itemBuilder: (context, index) {
                            final item = viewModel.homeFields[index];
                            return switch (item.type) {
                              'carousel' => Visibility(
                                  visible:
                                      (item.carouselItems ?? []).isNotEmpty,
                                  child: FadingCarousel(
                                      images: item.carouselItems ?? [])),
                              'brands' =>
                                BrandCarousel(brandData: item.brands ?? []),
                              'category' => CategoriesSection(
                                  categories: item.categories ?? []),
                              'rfq' => Visibility(
                                  visible: (item.image ?? '').isNotEmpty,
                                  child: DynamicBannerCard(
                                    imageUrl: item.image ?? '',
                                    buttonText: 'Create RFQ',
                                    onButtonPressed: () {},
                                    title: 'Request for quote',
                                  ),
                                ),
                              'collection' => ProductSection(
                                  title: item.name ?? "Not Added Yet!",
                                  products: item.products ?? [],
                                ),
                              'future-order' =>
                                DynamicBannerCard(imageUrl: item.image ?? ''),
                              'banner-grid' =>
                                ProductTileSection(banner: item.banners ?? []),
                              'banner' => DynamicBannerCard(
                                  imageUrl: item.banner?.image ?? ''),
                              _ => const SizedBox.shrink()
                            };
                          },
                          separatorBuilder: (_, __) => verticalSpace(20),
                          itemCount: viewModel.homeFields.length,
                        ),
                )
              ],
            )),
          );
        });
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.getView());
}
