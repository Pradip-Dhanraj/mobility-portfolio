import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/viewmodels/base-viewmodel.dart';

class WorkViewModel extends BaseModel {
  final double focusedsize = 30;
  final double unfocusedsize = 20;
  List<Map<String, dynamic>> worklist;
  //String selectedskill;
  //String brand;
  final double focusedopacity = 1;
  final double unfocusedopacity = .5;
  //final double selectedindex = 0;
  int _selectedindex = 0;
  int get selectedindex => _selectedindex;
  set selectedindex(int value) {
    _selectedindex = value;
    notifyListeners();
  }

  WorkViewModel() {
    worklist = [
      {
        "title": "Ruskin BLE",
        "projecttitle": "Ruskin BLE",
        "description":
            "Cross-platform application for Ruskin’s thermal dispersion sensor to control temperature and airflow. \nIt uses BLE as an interface to connect with mobile applications.",
        "platform": [
          {"os": "ios", "url": ""},
          {"os": "android", "url": ""}
        ],
        "comments": ""
      },
      {
        "title": "Asian Paints",
        "projecttitle": "Asian Paints - Customer Complaints",
        "description":
            "App for all the Dealers as well as Customers to file complaints against a product or to claim compensation for that.",
        "platform": [
          {
            "os": "ios",
            "url":
                "https://apps.apple.com/in/app/customer-complaint-ap/id1312220707"
          },
          {
            "os": "android",
            "url":
                "https://play.google.com/store/apps/details?id=com.asian.customerComplaint"
          },
          {"os": "windows", "url": ""}
        ],
        "comments": ""
      },
      {
        "title": "Tata Power",
        "projecttitle": "Tata Power ECR",
        "description":
            "The ECM solution is the implementation  of communication environment  for sharing official documents within organization to every level of employee.",
        "platform": [
          {
            "os": "android",
            "url":
                "https://play.google.com/store/apps/details?id=com.tatapower.ecr"
          }
        ],
        "comments": ""
      },
      {
        "title": "Tata Power",
        "projecttitle": "Tata Power DW",
        "description":
            "The Director world is for the Directors of the Tata Power group to keep an update from Tata portals. They can access every document and file with the comments section and details.",
        "platform": [
          {
            "os": "android",
            "url":
                "https://play.google.com/store/apps/details?id=com.tatapower.Director"
          }
        ],
        "comments": ""
      }
    ];
  }

  // Future<bool> loaddata() async {
  //   var result = await getprojectlist();
  //   worklist = List.from(result);
  //   notifyListeners();
  //   return worklist != null;
  // }

  // Future<dynamic> getprojectlist() async {
  //   var jsonbody = await rootBundle.loadString('$jsondata');
  //   return json.decode(jsonbody)["result"];
  // }
}
