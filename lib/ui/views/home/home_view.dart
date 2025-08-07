import 'package:flutter/material.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';
import 'package:fragrance_app/ui/views/home/widgets/brand_carousel.dart';
import 'package:fragrance_app/ui/views/home/widgets/categories_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/latest_product_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/new_arrivals_section.dart';
import 'package:fragrance_app/ui/views/home/widgets/product_tile_section.dart';
import 'package:fragrance_app/ui/widgets/common/app_bar_widget/app_bar_widget.dart';
import 'package:fragrance_app/ui/widgets/common/dynamic_banner_card/dynamic_banner_card.dart';
import 'package:fragrance_app/ui/widgets/common/search_scan_bar/search_scan_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: const AppBarWidget(userName: 'John Doe'),
      body: SafeArea(
          child: Column(
        children: [
          const SearchScanBar(),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(12.0),
            children: [
              const DynamicBannerCard(
                  imageUrl:
                      'https://i.pinimg.com/736x/f5/6a/b2/f56ab2dd0fd775a6cf730b38087ad2b2.jpg'),
              verticalSpace(10),
              BrandCarousel(brandData: viewModel.brandData),
              verticalSpace(10),
              CategoriesSection(categories: viewModel.categories),
              verticalSpace(20),
              DynamicBannerCard(
                imageUrl:
                    'https://i.pinimg.com/736x/f5/6a/b2/f56ab2dd0fd775a6cf730b38087ad2b2.jpg',
                buttonText: 'Create RFQ',
                onButtonPressed: () {},
                title: 'Request for quote',
              ),
              verticalSpace(10),
              const NewArrivalsSection(),
              verticalSpace(10),
              const ProductTileSection(),
              verticalSpace(10),
              const LatestProductSection(),
              verticalSpace(20),
              const DynamicBannerCard(
                imageUrl:
                    'https://i.pinimg.com/736x/f5/6a/b2/f56ab2dd0fd775a6cf730b38087ad2b2.jpg',
              ),
              verticalSpace(10),
              const LatestProductSection(),
            ],
          ))
        ],
      )),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
