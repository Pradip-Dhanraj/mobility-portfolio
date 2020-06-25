import 'package:flutter/material.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/resources/enum.dart';
import 'package:portfolio/resources/strings.dart';
import 'package:portfolio/viewmodels/home-viewmodel.dart';
import 'package:provider/provider.dart';

class DarkDashboard extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // header menu option
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(10),
                      //   child: Text(
                      //     "Home",
                      //     style: TextStyle(
                      //       color: model.home,
                      //     ),
                      //   ),
                      // ),
                      getText(
                        model.home,
                        "Home",
                        model,
                        PageSelection.Home,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(10),
                      //   child: Text(
                      //     "Skills",
                      //     style: TextStyle(
                      //       color: model.skills,
                      //     ),
                      //   ),
                      // ),
                      getText(
                        model.skills,
                        "Skills",
                        model,
                        PageSelection.Skills,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(10),
                      //   child: Text(
                      //     "Work",
                      //     style: TextStyle(
                      //       color: model.work,
                      //     ),
                      //   ),
                      // ),
                      getText(
                        model.work,
                        "Work",
                        model,
                        PageSelection.Work,
                      ),
                      Spacer(),
                      // GestureDetector(
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(10),
                      //     child: Text(
                      //       "Contact",
                      //       style: TextStyle(
                      //         color: model.contact,
                      //       ),
                      //     ),
                      //   ),
                      //   onTap: () {
                      //     model.pageSelection(PageSelection.Contact);
                      //   },
                      // ),
                      getText(
                        model.contact,
                        "Contact",
                        model,
                        PageSelection.Contact,
                      ),
                    ],
                  ),
                ),
                // bio Section
                Container(
                  height: 400,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.bioLine1,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                Strings.bioLine2,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                ),
                              ),
                              Text(
                                Strings.bioLine3,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Learn more >>",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: selectedColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          maxRadius: 200,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                            Strings.profileimg,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // what i do
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "What i do",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      Text(
                        "Learn more >>",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: selectedColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
