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
  final GlobalKey<FormFieldState> _questionFormKey =
      GlobalKey<FormFieldState>();
  TextEditingController question = TextEditingController();
  final GlobalKey<FormFieldState> _selectFormKey = GlobalKey<FormFieldState>();
  TextEditingController select = TextEditingController();
  List<String> text = ['', '', '', '', ''];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    ScreenWidth s = ScreenWidth(context);
    return Scaffold(
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
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: t.uploadquestioncolor,
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: const EdgeInsets.all(15.0),
                        width: double.maxFinite,
                        height: s.height / 2,
                        child: TextField(
                          maxLines: null,
                          controller: question,
                          textAlign: TextAlign.start,
                          key: _questionFormKey,
                          cursorColor: t.timeColor,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type your question ...",
                              hintStyle: t.font3_Inter
                                  .copyWith(color: t.textcolor, fontSize: 16)),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: t.uploadquestioncolor,
                            borderRadius: BorderRadius.circular(25.0)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 12),
                        width: double.maxFinite,
                        height: s.height / 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: s.width / 1.3,
                              child: TextFormField(
                                controller: select,
                                textAlign: TextAlign.start,
                                key: _selectFormKey,
                                onChanged: (value) {
                                  if (value != '') {
                                    text[count] = value;
                                  }
                                },
                                cursorColor: t.timeColor,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Select skills",
                                    hintStyle: t.font3_Inter.copyWith(
                                        color: t.textcolor, fontSize: 14)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count + 1;
                                });
                              },
                              child: Icon(
                                CupertinoIcons.search,
                                color: t.timeColor,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        height: 80,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: t.uploadquestioncolor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ListView.builder(
                            shrinkWrap: true, //    <-- Set this to true
                            physics: const ScrollPhysics(),
                            itemCount: count,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              if (text.length > index) {
                                return Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: t.skillcolor,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          text[index],
                                          style: t.font3_Inter.copyWith(
                                              fontSize: 14,
                                              color: Colors.grey[700]),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                count--;
                                                for (int i = index;
                                                    i < count;
                                                    i++) {
                                                  text[i] = text[i + 1];
                                                }
                                                text[count] = '';
                                              });
                                            },
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  t.uploadquestioncolor,
                                              radius: 7,
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.grey[700],
                                                size: 9,
                                              ),
                                            ))
                                      ],
                                    ));
                              } else {
                                return const SizedBox();
                              }
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                      width: 90,
                      alignment: Alignment.center,
                      height: 45,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.0),
                        color: t.postbuttoncolor,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'Post',
                              style: t.font3_Inter.copyWith(
                                  color: t.paperplanecolor, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Icon(
                              CupertinoIcons.paperplane,
                              color: t.paperplanecolor,
                              size: 23,
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
