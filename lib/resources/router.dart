import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/dark-theme-dashboard.dart';
import 'route_paths.dart' as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case routes.LoginRoute:
    //   return MaterialPageRoute(builder: (context) => LoginView());
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => DarkDashboard());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
