import 'package:flutter/material.dart';
import 'package:my_cv_app/ui/screens/academic.dart';
import 'package:my_cv_app/ui/screens/contact.dart';
import 'package:my_cv_app/ui/screens/languages.dart';
import 'package:my_cv_app/ui/screens/main_page.dart';
import 'package:my_cv_app/ui/screens/relevant.dart';
import 'package:my_cv_app/ui/screens/skills.dart';
import 'package:my_cv_app/ui/screens/summary.dart';

class MyPageController extends ChangeNotifier {
  List<Widget> pages = [
    MainPage(),
    Summary(),
    Academic(),
    Relevant(),
    Skills(),
    Languages(),
    Contact(),
  ];

  int currentIndex = 0;

  void setPageIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
