import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitogether_app/constants/Themehelper.dart';
import 'package:vitogether_app/constants/screen_width.dart';

class SideNavDrawer extends StatefulWidget {
  const SideNavDrawer({Key? key}) : super(key: key);

  @override
  State<SideNavDrawer> createState() => _SideNavDrawerState();
}

class _SideNavDrawerState extends State<SideNavDrawer> {
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    ScreenWidth s = ScreenWidth(context);
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40.0), bottomRight: Radius.circular(40.0)),
      child: Drawer(
        width: 220,
        child: Container(
            height: s.height,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: t.backgroundColor2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    NewWidget(
                      icon: CupertinoIcons.home,
                      name: 'Home',
                    ),
                    NewWidget(
                      icon: CupertinoIcons.person,
                      name: 'Profile',
                    ),
                    NewWidget(
                      icon: CupertinoIcons.chat_bubble,
                      name: 'Chat',
                    ),
                    NewWidget(
                      icon: CupertinoIcons.search,
                      name: 'Search',
                    ),
                    NewWidget(
                      icon: CupertinoIcons.info,
                      name: 'About us',
                    ),
                  ],
                ),
                NewWidget(
                  icon: Icons.logout,
                  name: 'Logout',
                )
              ],
            )),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  String name;
  IconData? icon;
  NewWidget({Key? key, this.name = '', this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 24),
            const SizedBox(
              width: 19,
            ),
            Text(name, style: ThemeHelper().font4_sans)
          ],
        ),
      ),
    );
  }
}
