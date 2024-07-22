import 'package:flutter/material.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/first_page.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/home_page.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped(){
    print("User tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
