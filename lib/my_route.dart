
import 'package:flutter/material.dart';
import 'package:flutter_generated_route/pages/home_screen.dart';
import 'package:flutter_generated_route/pages/login_screen.dart';
import 'package:flutter_generated_route/pages/reg_screen.dart';
import 'package:page_transition/page_transition.dart';

class MyRoute{
  static Route<dynamic> generatedRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case homeRoute:
        return _materialRoute(const HomeScreen());
      case loginRoute:
        var arguments=routeSettings.arguments as Map;
        return _materialRoute(LoginScreen(arguments));
      case regRoute:
        var arguments=routeSettings.arguments as Map;
        return _materialRoute( RegScreen(arguments));
      default:
        return _materialRoute(Scaffold(
          body: Center(child: Text('No route Found ${routeSettings.name}')),
        ));
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return PageTransition(
        child: view,
        type: PageTransitionType.bottomToTop,
        duration: const Duration(milliseconds: 300),
        reverseDuration: const Duration(milliseconds: 300),

    );
  }
}





const String homeRoute ='/';
const String loginRoute ='/login_screen';
const String regRoute ='/reg_screen';