import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vitogether_app/screens/AnswerScreen/AnswerScreen.dart';
import 'package:vitogether_app/screens/DiscoverScreen/DiscoverScreen.dart';
import 'package:vitogether_app/screens/PostQuestionScreen/postquestionscreen.dart';

import '../../constants/Themehelper.dart';
import '../SideNavigationDrawer/sidenavigationdrawer.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int count = 0;
  List screen = [
    const DiscoverScreen(),
    AnswerScreen(),
    const PostQuestionScreen(),
    DiscoverScreen(),
    DiscoverScreen()
  ];
  void ontap(int index) {
    setState(() {
      count = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    return Scaffold(
        key: _scaffoldkey,
        drawer: const SideNavDrawer(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0), // here the desired height
          child: AppBar(
            iconTheme: IconThemeData(size: 32, color: t.white),
            backgroundColor: t.backgroundColor,
            title: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 20, right: 10, bottom: 25),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                width: double.infinity,
                color: t.backgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(CupertinoIcons.bell, color: t.white, size: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: screen[count],
        bottomNavigationBar: Container(
          color: t.white,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              unselectedFontSize: 12,
              selectedFontSize: 12,
              onTap: ontap,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: t.selectedColor,
              backgroundColor: t.bottomnavColor,
              currentIndex: count,
              unselectedItemColor: t.unselectedColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      CupertinoIcons.home,
                      size: 27,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "chat",
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      CupertinoIcons.chat_bubble,
                      size: 27,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Add",
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.add_box_rounded,
                      color: Color(0xFF30709C),
                      size: 40,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Search",
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      CupertinoIcons.search,
                      size: 27,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      CupertinoIcons.person,
                      size: 27,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
