import 'package:get_it/get_it.dart';
import 'package:portfolio/services/navigation-service.dart';
import 'snippets.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Snippets());
}