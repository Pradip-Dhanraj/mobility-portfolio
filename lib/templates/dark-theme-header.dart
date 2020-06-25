import 'package:flutter/material.dart';
import 'package:portfolio/resources/enum.dart';
import 'package:portfolio/resources/strings.dart';
import 'package:portfolio/viewmodels/home-viewmodel.dart';

class DarkHeader extends StatelessWidget {
  final model;
  DarkHeader(this.model);
  Widget divider() => Transform.scale(
        scale: 1.5,
        child: Text(
          "|",
          style: TextStyle(color: Colors.white),
        ),
      );
  Widget getText(
      Color textcolor, String text, HomeViewModel model, PageSelection page) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
          ),
        ),
      ),
      onTap: () => model.pageSelection(page),
    );
  }

  Widget getLinkText(
    String text,
    String url,
    HomeViewModel model,
  ) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onTap: () => model.launchInBrowser(url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          divider(),
          getText(
            model.home,
            "Home",
            model,
            PageSelection.Home,
          ),
          getText(
            model.skills,
            "Skills",
            model,
            PageSelection.Skills,
          ),
          getText(
            model.work,
            "Work",
            model,
            PageSelection.Work,
          ),
          divider(),
          getLinkText(
            "LinkedIn",
            Strings.linkedinurl,
            model,
          ),
          getLinkText(
            "Github",
            Strings.githuburl,
            model,
          ),
          divider(),
          Spacer(),
          getText(
            model.contact,
            "Contact",
            model,
            PageSelection.Contact,
          ),
        ],
      ),
    );
  }
}
