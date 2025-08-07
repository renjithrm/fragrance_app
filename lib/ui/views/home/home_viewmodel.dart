import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/app/app.dialogs.dart';
import 'package:fragrance_app/models/home/home_field.dart';
import 'package:fragrance_app/models/home/home_response.dart';
import 'package:fragrance_app/services/home_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _homeApiService = locator<HomeService>();
  final _dialogService = locator<DialogService>();

  HomeResponse? _homeResponse;

  Future getView() async {
    setBusy(true);
    _homeResponse = await _homeApiService.fetchHome();
    setBusy(false);

    if (_homeResponse == null) {
      // Show error dialog
      await _dialogService.showCustomDialog(
        variant: DialogType.infoAlert,
        title: 'Error',
        description: 'Failed to load home data. Please try again.',
      );
    }

    notifyListeners();
  }

  List<HomeField> get homeFields => _homeResponse?.homeFields ?? [];
}

class CategoryItem {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);
}
