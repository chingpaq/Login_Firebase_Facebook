import 'package:stacked_services/stacked_services.dart';
import 'package:provider_architecture/provider_architecture.dart';
import '../services/router.gr.dart';
import '../services/locator.dart';

class LoginPageViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  void navigateToHomePage() {
    _navigationService.navigateTo(Routes.homeViewRoute);
  }
}
