import 'package:flutter/material.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/resources/enum.dart';
import 'package:portfolio/resources/locator.dart';
import 'package:portfolio/services/navigation-service.dart';
import 'package:portfolio/viewmodels/base-viewmodel.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  //PageSelection _selectedoption;
  Color home = selectedColor;
  Color skills = Colors.white;
  Color work = Colors.white;
  Color contact = Colors.white;
  List<Color> lst;

  HomeViewModel() {
    lst = [
      home,
      skills,
      work,
      contact,
    ];
  }

  void _resetColors() {
    home = Colors.white;
    skills = Colors.white;
    work = Colors.white;
    contact = Colors.white;
  }

  Future pageSelection(PageSelection page) {
    switch (page) {
      case PageSelection.Home:
        _resetColors();
        home = selectedColor;
        break;
      case PageSelection.Skills:
        _resetColors();
        skills = selectedColor;
        break;
      case PageSelection.Work:
        _resetColors();
        work = selectedColor;
        break;
      case PageSelection.Contact:
        _resetColors();
        contact = selectedColor;
        break;
      default:
    }
    notifyListeners();
  }

  // void pageSelection(PageSelection page) {
  //   switch (page) {
  //     case PageSelection.Home:
  //       home = Colors.orange;
  //       skills = Colors.white;
  //       work = Colors.white;
  //       contact = Colors.white;
  //       break;
  //     case PageSelection.Skills:
  //       home = Colors.white;
  //       skills = Colors.orange;
  //       work = Colors.white;
  //       contact = Colors.white;
  //       break;
  //     case PageSelection.Work:
  //       home = Colors.white;
  //       skills = Colors.white;
  //       work = Colors.orange;
  //       contact = Colors.white;
  //       break;
  //     case PageSelection.Contact:
  //       home = Colors.white;
  //       skills = Colors.white;
  //       work = Colors.white;
  //       contact = Colors.orange;
  //       break;
  //     default:
  //   }
  //   notifyListeners();
  // }

  // Future logout({bool success = true}) async {
  //   setBusy(true);
  //   await Future.delayed(Duration(seconds: 1));

  //   if (!success) {
  //     setErrorMessage('Error has occured during sign out');
  //   } else {
  //     _navigationService.goBack();
  //   }
  // }
}
