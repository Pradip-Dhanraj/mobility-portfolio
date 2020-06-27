import 'package:flutter/material.dart';
import 'package:portfolio/resources/strings.dart';
import 'package:portfolio/viewmodels/work-viewmodel.dart';
import 'package:provider/provider.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkViewModel(),
      child: Consumer<WorkViewModel>(
        builder: (context, model, child) => GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30.0,
            mainAxisSpacing: 30.0,
          ),
          shrinkWrap: true,
          children: <String>[
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
          ].map((String url) {
            return GridTile(
                child: Image.network(Strings.profileimg, fit: BoxFit.cover));
          }).toList(),
        ),
      ),
    );
  }
}

// GridView.count(
//           crossAxisCount: 4,
//           childAspectRatio: 1.0,
//           padding: const EdgeInsets.all(4.0),
//           mainAxisSpacing: 4.0,
//           crossAxisSpacing: 4.0,
//           children: <String>[
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//             'http://www.for-example.org/img/main/forexamplelogo.png',
//           ].map((String url) {
//             return GridTile(
//                 child: Image.network(url, fit: BoxFit.cover));
//           }).toList()),

// SliverGrid(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//           ),
//           delegate:
//               SliverChildBuilderDelegate((BuildContext context, int index) {
//             return new Container(
//                 color: Colors.teal[100 * (index % 9)], height: 150.0);
//           }),
//         )
