import 'package:flutter/material.dart';
import 'package:vitogether_app/constants/Themehelper.dart';
import 'package:vitogether_app/screens/BottomNavigationBar/bottomnavbar.dart';
import 'package:vitogether_app/screens/TeamSearchScreen/teammateSearchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: t.backgroundColor),
      home: BottomNavScreen(),
    );
  }
}
