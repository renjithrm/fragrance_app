import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fragrance_app/app/app.bottomsheets.dart';
import 'package:fragrance_app/app/app.dialogs.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  final List<Map<String, String>> brandData = [
    {
      'name': 'Hermès',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Herm%C3%A8s_logo.svg/100px-Herm%C3%A8s_logo.svg.png'
    },
    {
      'name': 'Chanel',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Chanel_logo.svg/100px-Chanel_logo.svg.png'
    },
    {
      'name': 'Jo Malone',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/Jo_Malone_logo.svg/100px-Jo_Malone_logo.svg.png'
    },
    {
      'name': 'Louis Vuitton',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Louis_Vuitton_logo_and_wordmark.svg/100px-Louis_Vuitton_logo_and_wordmark.svg.png'
    },
    {
      'name': 'Gucci',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Gucci_logo.svg/100px-Gucci_logo.svg.png'
    },
    {
      'name': 'Prada',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Prada-Logo.svg/100px-Prada-Logo.svg.png'
    },
  ];

// List of category items
  final List<CategoryItem> categories = [
    CategoryItem('Citrus', Colors.yellow.shade100),
    CategoryItem('Aromatic', Colors.blue.shade100),
    CategoryItem('Floral', Colors.pink.shade100),
    CategoryItem('Green', Colors.green.shade100),
    CategoryItem('Green', Colors.green.shade100),
    CategoryItem('Floral', Colors.pink.shade100),
    CategoryItem('Citrus', Colors.yellow.shade100),
    CategoryItem('Aromatic', Colors.blue.shade100),
  ];
}

class CategoryItem {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);
}
