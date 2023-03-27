import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitogether_app/screens/SideNavigationDrawer/sidenavigationdrawer.dart';
import '../../constants/Themehelper.dart';
import '../../constants/screen_width.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    ScreenWidth s = ScreenWidth(context);
    return Scaffold(
      key: _scaffoldkey,
      drawer: const SideNavDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: t.backgroundColor,
              margin: const EdgeInsets.only(
                  top: 20, left: 25, right: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _scaffoldkey.currentState?.openDrawer(),
                    child: Icon(CupertinoIcons.line_horizontal_3,
                        color: t.white, size: 30),
                  ),
                  Icon(CupertinoIcons.bell, color: t.white, size: 30),
                ],
              ),
            ),
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                decoration: BoxDecoration(
                    color: t.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Discover',
                        style: t.font1,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.filter_alt_sharp),
                        SizedBox(width: s.width / 40),
                        Text('Filter', style: t.font2),
                        SizedBox(width: s.width / 2.1),
                        const Icon(Icons.trending_down),
                        Text('Top', style: t.font2),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(10.0),
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              height: s.height / 6.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        1.5, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        CupertinoIcons.circle,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        width: s.width / 50,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sara Hasan',
                                            style: t.font2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '4 min ago',
                                            style: t.font2.copyWith(
                                                color: t.timeColor,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: s.width / 3.2,
                                      ),
                                      Text(
                                        '16',
                                        style: t.font2.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Icon(
                                        CupertinoIcons.arrowtriangle_up_fill,
                                        color: t.backgroundColor,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: s.width / 300,
                                      ),
                                      Text(
                                        '5',
                                        style: t.font2.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Icon(
                                        CupertinoIcons.arrowtriangle_down_fill,
                                        color: Colors.redAccent,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: s.height / 100,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus consectetur ex, quis commodo nibh consequat et. Nulla non cursus mauris',
                                        style: t.font3_Inter),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
