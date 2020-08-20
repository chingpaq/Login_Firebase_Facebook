import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'authentication.dart';
@module
abstract class RegisterModule {
  @lazySingleton
  NavigationService get navigationService;
  @lazySingleton
  DialogService get dialogService;
  @lazySingleton
  AuthenticationService get authenticationService;
}
