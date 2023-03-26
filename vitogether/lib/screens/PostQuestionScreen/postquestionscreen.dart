import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/Themehelper.dart';
import '../../constants/screen_width.dart';

class PostQuestionScreen extends StatefulWidget {
  const PostQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PostQuestionScreen> createState() => _PostQuestionScreenState();
}

class _PostQuestionScreenState extends State<PostQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    ScreenWidth s = ScreenWidth(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: t.backgroundColor,
                margin: const EdgeInsets.only(
                    top: 20, left: 25, right: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.line_horizontal_3,
                        color: t.white, size: 30),
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
                  child: ListView(
                    children: [],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
