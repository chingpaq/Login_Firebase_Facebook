import 'package:provider_architecture/_base_viewmodels.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/authentication.dart';
import '../services/locator.dart';
import '../services/router.gr.dart';

class WelcomeViewModel extends BaseViewModel {
  String _title = 'Welcome View';
  String get title => _title;

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  void gotoSignUpPage() {
    _navigationService.navigateTo(Routes.signUpViewRoute);
  }

  void gotoLogInPage() {
    _navigationService.navigateTo(Routes.loginViewRoute);
  }

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();
    if (hasLoggedInUser) {
      print('Firebase account is logged in');
      _navigationService.navigateTo(Routes.homeViewRoute);
    } else {
      //_navigationService.navigateTo(Routes.welcomeViewRoute);
      print('There are no Firebase account logged in');
    }
  }
}
