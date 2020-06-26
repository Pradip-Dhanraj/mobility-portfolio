import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/dark-theme-contact.dart';
import 'package:portfolio/pages/dark-theme-dashboard.dart';
import 'package:portfolio/pages/dark-theme-skills.dart';
import 'package:portfolio/pages/dark-theme-work.dart';
import 'route_paths.dart' as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.SkillsRoute:
      return MaterialPageRoute(builder: (context) => Skills());
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => DarkDashboard());
    case routes.WorkRoute:
      return MaterialPageRoute(builder: (context) => Work());
    case routes.ContactRoute:
      return MaterialPageRoute(builder: (context) => Contact());
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
