// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/homeView.dart';
import '../views/loginPage.dart';
import '../views/signUp.dart';
import '../views/startUpView.dart';
import '../views/welcomePage.dart';

class Routes {
  static const String startUpViewRoute = '/start-up-view';
  static const String loginViewRoute = '/login-page';
  static const String signUpViewRoute = '/sign-up-page';
  static const String welcomeViewRoute = '/';
  static const String homeViewRoute = '/home-view';
  static const all = <String>{
    startUpViewRoute,
    loginViewRoute,
    signUpViewRoute,
    welcomeViewRoute,
    homeViewRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpViewRoute, page: StartUpView),
    RouteDef(Routes.loginViewRoute, page: LoginPage),
    RouteDef(Routes.signUpViewRoute, page: SignUpPage),
    RouteDef(Routes.welcomeViewRoute, page: WelcomePage),
    RouteDef(Routes.homeViewRoute, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    LoginPage: (data) {
      final args = data.getArgs<LoginPageArguments>(
        orElse: () => LoginPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    SignUpPage: (data) {
      final args = data.getArgs<SignUpPageArguments>(
        orElse: () => SignUpPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    WelcomePage: (data) {
      final args = data.getArgs<WelcomePageArguments>(
        orElse: () => WelcomePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginPage arguments holder class
class LoginPageArguments {
  final Key key;
  final String title;
  LoginPageArguments({this.key, this.title});
}

/// SignUpPage arguments holder class
class SignUpPageArguments {
  final Key key;
  final String title;
  SignUpPageArguments({this.key, this.title});
}

/// WelcomePage arguments holder class
class WelcomePageArguments {
  final Key key;
  final String title;
  WelcomePageArguments({this.key, this.title});
}
