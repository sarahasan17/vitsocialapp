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
  List text2 = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus consectetur ex, quis commodo nibh cons',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus consectetur ex, quis commodo nibh cons'
  ];
  int index2 = 0;
  @override
  Widget build(BuildContext context) {
    ScreenWidth s = ScreenWidth(context);
    ThemeHelper t = ThemeHelper();
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            color: t.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0))),
        child: Column(
          children: [
            Expanded(
              flex: 25,
              child: PageView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  scrollBehavior: const ScrollBehavior(),
                  itemBuilder: (_, index) {
                    Future.delayed(const Duration(microseconds: 0), () {
                      setState(() {
                        index2 = index;
                      });
                    });

                    return Column(
                      children: [
                        Container(
                            height: s.height / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/' + image[index],
                                    ),
                                    fit: BoxFit.fitHeight))),
                        Container(
                          width: s.width / 1.2,
                          child: Text(
                            text1[index],
                            style: t.poppinstext,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: s.height / 30),
                        Container(
                          width: s.width / 1.3,
                          child: Text(
                            text2[index],
                            style: t.Inter_findteam,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: s.height / 30),
                      ],
                    );
                  }),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(2, (index1) {
                  return Container(
                    margin: const EdgeInsets.all(3),
                    width: index2 == index1 ? 22 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: t.findteambuttonColor),
                  );
                }),
              ),
            ),
            const Expanded(child: SizedBox()),
            Expanded(
              flex: 3,
              child: Container(
                height: s.height / 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: t.findteambuttonColor,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: t.poppinstext.copyWith(
                        color: t.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
