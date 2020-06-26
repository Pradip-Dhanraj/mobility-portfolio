import 'package:flutter/material.dart';
import 'package:portfolio/templates/dark-theme-header.dart';
import 'package:portfolio/viewmodels/skills-viewmodel.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SkillsViewModel(),
      child: Consumer<SkillsViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // header menu option
                DarkHeader(model),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
