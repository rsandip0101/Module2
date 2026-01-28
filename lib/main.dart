import 'package:flutter/material.dart';
import 'package:module_2/List_view_lesson.dart';
import 'package:module_2/widgets/bottom_navigationbarEg.dart';
import 'package:module_2/widgets/card.dart';
import 'package:module_2/profilepage.dart';
import 'package:module_2/widgets/drawer_eg/drawer.dart';
import 'package:module_2/widgets/drawer_eg/drawer_stack.dart';
import 'package:module_2/widgets/list_tile.dart';
import 'package:module_2/widgets/tab_bar/tab_bar.dart';
import 'appbar_curve.dart';
import 'detector/Inkwell_Eg/inkwell_1.dart';
import 'detector/gesture_detectorEg/gesture_detector.dart';
import 'detector/gesture_detectorEg/long_press.dart';
import 'gridview/grid_view.dart';
import 'gridview/gridview_builder.dart';
import 'gridview/gridview_extender.dart';
import 'listview_example/1list_view.dart';
import 'listview_example/2listview_seperated_eg.dart';
import 'login/RegisterPage.dart';
import 'login_validation/shared_preference/shared_register_page.dart';
import 'login_validation/shared_preference/shared_splash_screen.dart';
import 'media_query/media_query_ex.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profilepage () //first page when runs app
    );
  }
}
