import 'package:portfolio/pages/dark-theme-dashboard.dart';
import 'package:portfolio/viewmodels/base-viewmodel.dart';

class HomeViewModel extends BaseModel {
  HomeViewModel() {
    displaycontainer = DarkDashboard();
  }
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
