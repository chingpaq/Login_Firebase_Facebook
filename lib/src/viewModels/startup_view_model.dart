import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/_base_viewmodels.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/authentication.dart';
import '../services/locator.dart';
import '../services/router.gr.dart';

class StartUpViewModel extends BaseViewModel {
  String _title = 'Start Up View';
  String get title => '$_title counter:$counter';
  final BuildContext context;

  StartUpViewModel({@required this.context});

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();
    if (hasLoggedInUser) {
      _navigationService.navigateTo(Routes.homeViewRoute);

    } else {
      _navigationService.navigateTo(Routes.welcomeViewRoute);
    }

  }
}
