import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/dark-theme-contact.dart';
import 'package:portfolio/pages/dark-theme-dashboard.dart';
import 'package:portfolio/pages/dark-theme-skills.dart';
import 'package:portfolio/pages/dark-theme-work.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/resources/enum.dart';
import 'package:portfolio/resources/locator.dart';
import 'package:portfolio/resources/route_paths.dart' as route;
import 'package:portfolio/resources/snippets.dart';
import 'package:portfolio/services/navigation-service.dart';

class BaseModel extends ChangeNotifier {
  bool _busy = false;
  String _errorMessage;
  Widget displaycontainer;

  final NavigationService navigationService = locator<NavigationService>();
  final Snippets snippets = locator<Snippets>();

  Color home = selectedColor;
  Color skills = Colors.white;
  Color work = Colors.white;
  Color contact = Colors.white;

  void _resetColors() {
    home = Colors.white;
    skills = Colors.white;
    work = Colors.white;
    contact = Colors.white;
  }

  void launchInBrowser(String url) => snippets.launchInBrowser(url);

  Future pageSelection(PageSelection page) async {
    switch (page) {
      case PageSelection.Home:
        _resetColors();
        home = selectedColor;
        displaycontainer = DarkDashboard();
        //await navigationService.navigateTo(route.HomeRoute);
        break;
      case PageSelection.Skills:
        _resetColors();
        skills = selectedColor;
        displaycontainer = Skills();
        //await navigationService.navigateTo(route.SkillsRoute);
        break;
      case PageSelection.Work:
        _resetColors();
        work = selectedColor;
        displaycontainer = Work();
        //await navigationService.navigateTo(route.WorkRoute);
        break;
      case PageSelection.Contact:
        _resetColors();
        contact = selectedColor;
        displaycontainer = Contact();
        //await navigationService.navigateTo(route.ContactRoute);
        break;
      default:
    }
    notifyListeners();
  }

  bool get busy => _busy;
  String get errorMessage => _errorMessage;
  bool get hasErrorMessage => _errorMessage != null && _errorMessage.isNotEmpty;

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }
}
