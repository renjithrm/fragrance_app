import 'package:fragrance_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:fragrance_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:fragrance_app/ui/views/home/home_view.dart';
import 'package:fragrance_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:fragrance_app/services/shared_preferences_service.dart';
import 'package:fragrance_app/services/base_api_service.dart';
import 'package:fragrance_app/services/auth_service.dart';
import 'package:fragrance_app/services/home_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: BaseApiService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: HomeService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
