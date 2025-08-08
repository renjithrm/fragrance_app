import 'package:flutter/material.dart';
import 'package:fragrance_app/app/app.bottomsheets.dart';
import 'package:fragrance_app/app/app.dialogs.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/app/app.router.dart';
import 'package:fragrance_app/services/shared_preferences_service.dart';
import 'package:fragrance_app/ui/common/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  final sharedPrefService = locator<SharedPreferencesService>();
  await sharedPrefService.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0.0,
          ),
          scaffoldBackgroundColor: kcScaffoldBgColor),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
