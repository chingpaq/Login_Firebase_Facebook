import 'package:provider_architecture/_base_viewmodels.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/locator.dart';
import '../services/authentication.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future logoutUser() async {
    var hasLoggedInUser = await _authenticationService.signOutUser();
    if (hasLoggedInUser) {
      print('Nothing happens');
    } else {
      print('Account signed out');
      _navigationService.back();
    }
  }
}
