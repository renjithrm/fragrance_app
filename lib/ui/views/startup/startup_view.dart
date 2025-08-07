import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';
import '../../common/app_strings.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EDEB), // Soft pastel background
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Perfume bottle image placeholder
            SizedBox(
              height: 120,
              child: Image.asset(
                'assets/images/categories_placeholder.png', // Replace with perfume bottle asset when available
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            // App name/title
            const Text(
              ksAppName,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'Serif',
                color: Color(0xFF6D6875), // Elegant deep color
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            // Tagline
            const Text(
              ksAppTagline,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Color(0xFFB5838D),
              ),
            ),
            const SizedBox(height: 32),
            // Themed spinner only, no text
            const SizedBox(
              width: 36,
              height: 36,
              child: CircularProgressIndicator(
                color: Color(0xFFB5838D),
                strokeWidth: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
