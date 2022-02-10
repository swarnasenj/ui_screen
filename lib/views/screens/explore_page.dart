
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/component/bottom_navbar.dart';
import 'package:ui_hut/views/component/page_details/ui_page.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int ind1 = 0;
  List tabbarlist = [
    {
      "description": "UI Design",
    },
    {
      "description": "UX Design",
    },
    {
      "description": "Visual Design",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
      appBar: AppBar(
        backgroundColor: kcolor.backcolor,
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          height: 44,
          width: 44,
          child: Image.asset(AssetPath.men),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 44,
            width: 44,
            child: Image.asset(AssetPath.notifi),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 31,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Explore',
                    style: KTextStyle.veritext,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(tabbarlist.length, (int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              ind1 = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Container(
                              height: 34,
                              width: tabbarlist[index]["description"] ==
                                      "UI Design"
                                  ? 97
                                  : tabbarlist[index]["description"] ==
                                          "UX Design"
                                      ? 101
                                      : tabbarlist[index]["description"] ==
                                              "Visual Design"
                                          ? 121
                                          : 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.blue.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(40),
                                  color: ind1 == index
                                      ? kcolor.yellow
                                      : kcolor.buttonbackcolor),
                              child: Center(
                                child: Text(
                                  tabbarlist[index]["description"],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ind1 == index
                                          ? kcolor.boxtext
                                          : kcolor.white),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: UiPage(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 325,
                  //width: 400,
                  color: kcolor.tread,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 20, left: 20),
                                  child: Text(
                                    'TRENDING NOW',
                                    style: KTextStyle.subs,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(top: 30, left: 20),
                                  child: Image.asset(
                                    AssetPath.rec,
                                    height: 90,
                                    width: 90,
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 65,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Faysal Khan',
                                  style: KTextStyle.treadtext,
                                ),
                                Text(
                                  'End Of The Line For Uber',
                                  style: KTextStyle.ubertext,
                                ),
                                Text(
                                  'Why Uber Is Gone?',
                                  style: KTextStyle.uitext,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Read Time : 5 min',
                                  style: KTextStyle.readtext,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20,),
                        height: 1,
                        width: 325,
                        color: kcolor.treadcolor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 10, left: 20),
                                  child: Image.asset(
                                    AssetPath.retan,
                                    height: 90,
                                    width: 90,
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hasan Ahmed',
                                  style: KTextStyle.treadtext,
                                ),
                                Text(
                                  'Building Community....',
                                  style: KTextStyle.ubertext,
                                ),
                                Text(
                                  'We Need a Better Community',
                                  style: KTextStyle.uitext,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Read Time : 8 min',
                                  style: KTextStyle.readtext,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
                  child: BottomNavbar(),
                )
    );
  }
}
