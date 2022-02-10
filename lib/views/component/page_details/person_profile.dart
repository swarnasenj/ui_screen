

import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';

class PersonProfile extends StatefulWidget {
  const PersonProfile({Key? key}) : super(key: key);

  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> {
  @override
  List postList = [
    {
      "image": AssetImage(AssetPath.rec),
      "title": "End Of The Line For Uber",
      "subtitle": "Why Uber Is Gone?",
      "readtime": "Read Time : 7 min"
    },
    {
      "image": AssetImage(AssetPath.retan),
      "title": "Building Community....",
      "subtitle": "Why Need Better Community?",
      "readtime": "Read Time : 7 min"
    },
    {
      "image": AssetImage(AssetPath.uxdesign),
      "title": "Why UX Is More.... ",
      "subtitle": "Why You Need UX In Design?",
      "readtime": "Read Time : 7 min"
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
      appBar: AppBar(
        backgroundColor: kcolor.backcolor,
        leadingWidth: 70,
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          height: 44,
          width: 44,
          child: Image.asset(AssetPath.pack),
        ),
        title: Container(
          margin: EdgeInsets.only(
            left: 60,
          ),
          child: Text(
            "@adom007",
            style: KTextStyle.subs,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1500,
          margin: const EdgeInsets.only(left: 7, top: 40,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(
                      image: AssetImage(AssetPath.men),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Column(
                    children: [
                      Text(
                        "23k",
                        style: KTextStyle.subs,
                      ),
                      Text(
                        "Followers",
                        style: KTextStyle.treadtext,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "10",
                        style: KTextStyle.subs,
                      ),
                      Text(
                        "Following",
                        style: KTextStyle.treadtext,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "03",
                        style: KTextStyle.subs,
                      ),
                      Text(
                        "Posts",
                        style: KTextStyle.treadtext,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Adom Shafi",
                          style: KTextStyle.detailstext,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "App Designer at UI Hut",
                          style: KTextStyle.treadtext,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 34,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF1F1E22)),
                    child: Center(
                      child: Text("Edit", style: KTextStyle.sort),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: 375,
                color: kcolor.blackb,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "POST FROM ADOM",
                  style: KTextStyle.subs,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: postList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                        key: UniqueKey(),
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 10, bottom: 50),
                          //color: Colors.red,
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) {
                          setState(() {
                            postList.removeAt(index);
                          });
                        },
                        child: SizedBox(
                            height: 112,
                            //width: double.infinity,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Container(
                                    margin: EdgeInsets.only(),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    height: 80,
                                    width: 80,
                                    child: Image(
                                      image: postList[index]["image"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(postList[index]["title"],
                                      style: KTextStyle.ubertext),
                                  subtitle: Row(
                                    children: [
                                      Column(                                        
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(postList[index]["subtitle"],
                                              style: KTextStyle.uitext),
                                          Text(postList[index]["readtime"],
                                              style: KTextStyle.readtext)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  width: 375,
                                  color: kcolor.blackb,
                                ),
                              ],
                            )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
