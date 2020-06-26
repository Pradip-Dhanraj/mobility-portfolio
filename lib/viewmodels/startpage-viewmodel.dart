import 'package:portfolio/pages/dark-theme-dashboard.dart';
import 'package:portfolio/viewmodels/base-viewmodel.dart';

class StartPageViewModel extends BaseModel {
  StartPageViewModel() {
    displaycontainer = DarkDashboard();
  }
}
