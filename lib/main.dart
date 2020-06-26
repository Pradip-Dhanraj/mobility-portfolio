import 'package:flutter/material.dart';
import 'package:portfolio/states/counter_bloc.dart';
import 'package:provider/provider.dart';

import 'resources/locator.dart';
import 'resources/router.dart' as router;
import 'resources/route_paths.dart' as routes;
import 'resources/snippets.dart';
import 'services/navigation-service.dart';
import 'templates/header.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final Snippets snippets = Snippets();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolia',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.StartPageRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      // home: ChangeNotifierProvider<CounterBloc>.value(
      //   value: CounterBloc(),
      //   child: CounterPage(
      //     snippets: snippets,
      //   ),
      // ),
    );
  }
}

class CounterPage extends StatelessWidget {
  final Snippets snippets;
  CounterPage({
    this.snippets,
  });
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterBloc.counter++;
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Header(snippets: snippets),
          Center(
            child: Text("${counterBloc.counter}"),
          ),
        ],
      ),
    );
  }
}
