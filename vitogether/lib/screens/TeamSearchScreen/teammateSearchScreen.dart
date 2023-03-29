import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitogether_app/constants/Themehelper.dart';
import 'package:vitogether_app/constants/screen_width.dart';

import '../SideNavigationDrawer/sidenavigationdrawer.dart';

class TeamMateSearchScreen extends StatefulWidget {
  const TeamMateSearchScreen({Key? key}) : super(key: key);

  @override
  State<TeamMateSearchScreen> createState() => _TeamMateSearchScreenState();
}

class _TeamMateSearchScreenState extends State<TeamMateSearchScreen> {
  List image = ['explore1.png', 'explore2.png'];
  List text1 = ['Find your project partner', 'Find teammates for Hackathons'];
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ScreenWidth s = ScreenWidth(context);
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
            padding:
                const EdgeInsets.only(top: 30, left: 20, right: 10, bottom: 25),
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
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            color: t.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0))),
        child: PageView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Flexible(
                child: Container(
                    child: Column(
                  children: [
                    Image.asset(
                      'assets/images/' + image[index],
                      fit: BoxFit.fill,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: s.width / 2,
                      child: Text(text1[index]),
                    )
                  ],
                )),
              );
            }),
      ),
    );
  }
}
