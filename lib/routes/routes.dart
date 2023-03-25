import 'package:flutter/material.dart';
import 'package:my_app/views/intro/intro_page.dart';
import 'package:my_app/views/sus/sus_page.dart';
import 'package:my_app/views/sus2/sus2_page.dart';

class Routes {
  static const String home = "/home";
  static const String sus = "/sus";
  static const String sus2 = "/sus2";

  static final mapping = <String, WidgetBuilder>{
    home: (context) => const IntroPage(),
    sus: (context) => const SusPage(),
    sus2: (context) => const Sus2Page(),
  };
}
