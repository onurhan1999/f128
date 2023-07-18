import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gustopia/constant/context_extension_constants.dart';
import 'package:gustopia/constant/text_style_constants.dart';
import 'package:gustopia/view/login_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return SingleChildScrollView(
      child: SizedBox(
        height: context.dynamicHeight(1.7),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xffF37676),
            title: Text(
              "Gustopia",
              style: TextStyleConstants.MonsterratBoldWhite25(context),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()))
                        .then((value) => debugPrint(value));
                  },
                  icon: Icon(Icons.logout))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: context.dynamicWidth(0.8),
                      height: context.dynamicHeight(0.075),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: ListTile(
                        leading: Icon(Icons.search),
                        title: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mutfak",
                        style:
                            TextStyleConstants.MonsterratBoldBlack12(context),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 77,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: context.dynamicHeight(0.12),
                                    width: context.dynamicWidth(0.25),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFF6F6),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Image.asset(
                                                "assets/images/mutfak/burger.png")),
                                        Expanded(
                                            child: Text(
                                          "Burger",
                                          style: TextStyleConstants
                                              .MonsterratBlack12(context),
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle),
                          Text(
                            "Semtin Yıldızları",
                            style: TextStyleConstants.MonsterratBoldBlack15(
                                context),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Tümünü Gör",
                                style: TextStyle(color: Color(0xffF37676)),
                              )),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 77,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: context.dynamicHeight(0.2),
                                    width: context.dynamicWidth(0.5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF6F6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                                "assets/images/mutfak/doner.png")),
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Sürmene Döner",
                                                  style: TextStyleConstants
                                                      .MonsterratBoldBlack12(
                                                          context),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "- Et, Türk Mutfağı",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                            Text(
                                              "Min. 100 ₺",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle),
                          Text(
                            "Semtin Yıldızları",
                            style: TextStyleConstants.MonsterratBoldBlack15(
                                context),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Tümünü Gör",
                                style: TextStyle(color: Color(0xffF37676)),
                              )),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 77,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: context.dynamicHeight(0.2),
                                    width: context.dynamicWidth(0.5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF6F6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                                "assets/images/mutfak/doner.png")),
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Sürmene Döner",
                                                  style: TextStyleConstants
                                                      .MonsterratBoldBlack12(
                                                          context),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "- Et, Türk Mutfağı",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                            Text(
                                              "Min. 100 ₺",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle),
                          Text(
                            "Semtin Yıldızları",
                            style: TextStyleConstants.MonsterratBoldBlack15(
                                context),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Tümünü Gör",
                                style: TextStyle(color: Color(0xffF37676)),
                              )),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 77,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: context.dynamicHeight(0.2),
                                    width: context.dynamicWidth(0.5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF6F6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                                "assets/images/mutfak/doner.png")),
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Sürmene Döner",
                                                  style: TextStyleConstants
                                                      .MonsterratBoldBlack12(
                                                          context),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "- Et, Türk Mutfağı",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                            Text(
                                              "Min. 100 ₺",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle),
                          Text(
                            "Semtin Yıldızları",
                            style: TextStyleConstants.MonsterratBoldBlack15(
                                context),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Tümünü Gör",
                                style: TextStyle(color: Color(0xffF37676)),
                              )),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 77,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: context.dynamicHeight(0.2),
                                    width: context.dynamicWidth(0.5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF6F6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                                "assets/images/mutfak/doner.png")),
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Sürmene Döner",
                                                  style: TextStyleConstants
                                                      .MonsterratBoldBlack12(
                                                          context),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "- Et, Türk Mutfağı",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                            Text(
                                              "Min. 100 ₺",
                                              style: TextStyleConstants
                                                  .MonsterratBlack10(context),
                                            ),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
