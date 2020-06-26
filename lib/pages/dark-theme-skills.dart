import 'package:flutter/material.dart';
import 'package:portfolio/resources/strings.dart';
import 'package:portfolio/viewmodels/skills-viewmodel.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  TableRow divider() {
    return TableRow(
      children: [
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SkillsViewModel(),
      child: Consumer<SkillsViewModel>(
        builder: (context, model, child) => Table(
          columnWidths: {
            0: FractionColumnWidth(.3),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                //xamarin title
                Center(
                  child: Text(
                    "Xamarin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
                //xamarin details
                Text(
                  Strings.xamarinskillls,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )
              ],
            ),
            divider(),
            TableRow(
              children: [
                //flutter title
                Center(
                  child: Text(
                    "Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
                //flutter details
                Text(
                  Strings.flutterskillls,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )
              ],
            ),
            divider(),
            TableRow(
              children: [
                //nodejs title
                Center(
                  child: Text(
                    "NodeJS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
                //nodejs details
                Text(
                  Strings.flutterskillls,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ],
        ),

        // Row(
        //   children: [
        //     Flexible(
        //       fit: FlexFit.tight,
        //       child: Container(
        //         color: Colors.green,
        //         child: Center(
        //           child: Text("data"),
        //         ),
        //       ),
        //       flex: 1,
        //     ),
        //     Flexible(
        //       fit: FlexFit.tight,
        //       child: Column(
        //         children: [
        //           Text(
        //             "data",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 30
        //             ),
        //           ),
        //         ],
        //       ),
        //       flex: 2,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
