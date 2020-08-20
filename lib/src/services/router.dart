import 'package:auto_route/auto_route_annotations.dart';
import '../views/startUpView.dart';
import '../views/loginPage.dart';
import '../views/signUp.dart';
import '../views/welcomePage.dart';
import '../views/homeView.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartUpView, fullscreenDialog: true, name: "startUpViewRoute"),
    MaterialRoute( page: LoginPage, fullscreenDialog: true, name: "loginViewRoute"),
    MaterialRoute( page: SignUpPage, fullscreenDialog: true, name: "signUpViewRoute"),
    MaterialRoute( page: WelcomePage, initial: true, name: "welcomeViewRoute"),
    MaterialRoute( page: HomeView, fullscreenDialog: true, name: "homeViewRoute"),
  ],
)
class $Router {}