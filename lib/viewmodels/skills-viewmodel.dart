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
          "Custom renderers.",
          "Styles & behaviors.",
          "Native Android & iOS features.",
          "Styles & behaviors.",
          "Reusable components.",
          "Knowledge of cross-platform structure.",
          "Experience with JSON, XAML/XML, and Web Services.",
          "State management",
        ],
      },
      {
        "title": "Flutter",
        "fontsize": unfocusedsize,
        "opacity": unfocusedopacity,
        "skills": [
          " flutter Custom renderers.",
          "Styles & behaviors.",
          "Native Android & iOS features.",
          "Styles & behaviors.",
          "Reusable components.",
          "Knowledge of cross-platform structure.",
          "Experience with JSON, XAML/XML, and Web Services.",
          "State management",
        ],
      },
      {
        "title": "NodeJs",
        "fontsize": unfocusedsize,
        "opacity": unfocusedopacity,
        "skills": [
          "node js Custom renderers.",
          "Styles & behaviors.",
          "Native Android & iOS features.",
          "Styles & behaviors.",
          "Reusable components.",
          "Knowledge of cross-platform structure.",
          "Experience with JSON, XAML/XML, and Web Services.",
          "State management",
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
