import 'package:portfolio/viewmodels/base-viewmodel.dart';

class SkillsViewModel extends BaseModel {
  final double focusedsize = 100;
  final double unfocusedsize = 30;
  List<Map<String, dynamic>> skillslist;
  String selectedskill;
  String techpic;
  final double focusedopacity = 1;
  final double unfocusedopacity = .5;

  SkillsViewModel() {
    selectedskill = "Xamarin";
    techpic = "$selectedskill.png";
    skillslist = [
      {
        "title": "Xamarin",
        "fontsize": focusedsize,
        "opacity": focusedopacity,
        "skills": [
          "Strong competency in building cross-platform mobile applications using Xamarin Studio or Visual Studio with Xamarin plugin. Strong expertise on Xamarin.iOS, Xamarin.Android. ",
          "Working experience on iOS SDK and/or Android SDK ",
          "Working knowledge of data parsing, storing and related patterns. ",
          "Strong SQLite, SQL Server DB experience. Hands-on experience with REST services.",
          "Expertise in MVVM pattern. Code sharing patterns such as dependency service, service locator. ",
          "Strong ability in documenting design concepts. Ability to socialize technical knowledge to both technical and non-technical stakeholders.",
          "Strong in C#, the .NET framework and object oriented programming patterns and practices. ",
          "Strong trouble shooting skills to resolve the technical issues."
        ],
      },
      {
        "title": "Flutter",
        "fontsize": unfocusedsize,
        "opacity": unfocusedopacity,
        "skills": [
          "Understanding of Flutter acrchitecture",
          "Working experience in mobile development.",
          "Experience with third-party libraries and APIs.",
          "Solid understanding of the full mobile development life cycle, including automated testing and building",
          "Experience in building/deplyoing iOS, Android and web apps",
        ],
      },
      {
        "title": "NodeJs",
        "fontsize": unfocusedsize,
        "opacity": unfocusedopacity,
        "skills": [
          "Understanding of NodeJS architecture",
          "Hands-on experience with Express",
          "Working knowledge of data parsing, storing and related patterns. ",
          "Intermediate SQLite, SQL Server DB experience. Hands-on experience with REST services.",
        ],
      },
    ];
  }

  void setFontSize(int index, double fontsize) {
    for (var item in skillslist) {
      item["fontsize"] = unfocusedsize;
      item["opacity"] = unfocusedopacity;
    }
    skillslist[index]["fontsize"] = fontsize;
    selectedskill = skillslist[index]["title"];
    techpic = "$selectedskill.png";
    skillslist[index]["opacity"] = focusedopacity;
    notifyListeners();
  }
}
