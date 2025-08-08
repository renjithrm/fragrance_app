import 'dart:async';

import 'package:fragrance_app/models/home/carousel_item.dart';
import 'package:stacked/stacked.dart';

class FadingCarouselModel extends BaseViewModel {
  int _currentIndex = 0;
  Timer? _timer;

  int get currentIndex => _currentIndex;

  Timer? get timer => _timer;

  changeIndex(List<CarouselItem> images) {
    if (images.isNotEmpty) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        _currentIndex = (_currentIndex + 1) % images.length;
        notifyListeners();
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
