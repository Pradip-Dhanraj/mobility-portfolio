import 'package:flutter/material.dart';
import 'package:portfolio/viewmodels/skills-viewmodel.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SkillsViewModel(),
      child: Consumer<SkillsViewModel>(
        builder: (context, model, child) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // bio Section
            //model.displaycontainer,
            Text(
              "Skills are here",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
