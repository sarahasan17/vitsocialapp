import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/Themehelper.dart';
import '../../constants/screen_width.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  String dropdownvalue = 'Top';

  // List of items in our dropdown menu
  var items = [
    'Top',
    'Earliest',
    'Recent',
  ];
  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    ScreenWidth s = ScreenWidth(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                  decoration: BoxDecoration(
                      color: t.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 3), // changes position of shadow
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: t.timeColor, fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: s.width / 3.2,
                            ),
                            Text(
                              '16',
                              style: t.font2.copyWith(
                                  fontSize: 11, fontWeight: FontWeight.w400),
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
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            const Icon(
                              CupertinoIcons.arrowtriangle_down_fill,
                              color: Colors.redAccent,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: s.height / 100,
                        ),
                        Container(
                          width: double.maxFinite,
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus consectetur ex, quis commodo nibh consequat et. Nulla non cursus mauris',
                              style: t.font3_Inter),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: DropdownButton(
                            // Initial Value
                            value: dropdownvalue,

                            // Down Arrow Icon
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.trending_down),
                                    Text(items, style: t.font2),
                                  ],
                                ),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          CupertinoIcons.hand_thumbsup,
                                          color: t.backgroundColor,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: s.width / 100,
                                        ),
                                        Text(
                                          '5',
                                          style: t.font2.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const Icon(
                                          CupertinoIcons.hand_thumbsdown,
                                          color: Colors.redAccent,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: s.height / 100,
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus consectetur ex, quis commodo nibh consequat et. Nulla non cursus mauris',
                                          style: t.font3_Inter),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                    ),
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
