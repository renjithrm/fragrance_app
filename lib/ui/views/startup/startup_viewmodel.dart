import 'package:fragrance_app/app/app.dialogs.dart';
import 'package:fragrance_app/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthService>();

  Future runStartupLogic() async {
    final (success, message) = await _authService.anonymousLogin();
    if (success) {
      _navigationService.replaceWithHomeView();
    } else {
      // Show error dialog
      await _dialogService.showCustomDialog(
        variant: DialogType.infoAlert,
        title: 'Error',
        description: 'Failed to load home data. Please try again.',
      );
    }
  }
}
