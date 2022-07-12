import 'package:flutter/material.dart';
import 'package:vgd/presentation/login/login_screen.dart';
import 'package:vgd/presentation/registration/registration_screen.dart';

import '../resources/string_resource.dart';

class Routes{
  static const String login = '/';
  static const String registration = '/registration';
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registration:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute(){

    return MaterialPageRoute(builder: (_) =>
      Scaffold(
        appBar: AppBar(
          title: const Text(StringResource.routeNotFound),
        ),
        body: const Center(child: Text(StringResource.routeNotFound),),
      )
    );
  }
}

