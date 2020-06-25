import 'package:portfolio/resources/locator.dart';
import 'package:portfolio/services/navigation-service.dart';
import 'package:portfolio/viewmodels/base-viewmodel.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  //String selectedoption;

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
