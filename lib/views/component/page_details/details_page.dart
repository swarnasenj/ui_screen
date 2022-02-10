

import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/component/page_details/person_profile.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  List commentsList = [
    {
      "image1": "assets/images/adom.png",
      "name": "Adom Shafi",
      "type1": "20 min ago",
      "image2": "assets/images/dot.png",
      "description":
          "This is very usefull blog post, I love this !Thank You @mansur for this kind of post😍 ",
      "description1":
          "I alredy read about UX and its makes me improve my design work. Now i can reserch more about UX the UI. Also this post really very helpfull to me. I just learn somthing new about UX 😁👌 ",
      "image3": "assets/images/hard.png",
      "type2": "126",
      "image4": "assets/images/Chat.png",
      "type3": "10 Reply",
      "type4": "Reply",
      "image5": "assets/images/sami.png",
      "image6": "assets/images/mahdi.png",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: kcolor.backcolor,
        leadingWidth: 80,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, "ui page");
          },
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.asset(
              AssetPath.pack,
              height: 44,
              width: 44,
            ),
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(left: 60),
          child: Text(
            'Blog Post',
            style: KTextStyle.subs,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            height: 44,
            width: 44,
            child: Image.asset(AssetPath.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AssetPath.eli,
                        height: 70,
                        width: 70,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mansurul Haque',
                            style: KTextStyle.detailstext,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Topic',
                                style: KTextStyle.verifitext,
                                children: [
                                  TextSpan(
                                      text: ' : Why You Need UX In Design?',
                                      style: KTextStyle.topitext)
                                ]),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Text(
                'Why UX Design Is More \nImportant Then UI Design.',
                style: KTextStyle.ux,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  child: Text(
                    'User experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability and function.',
                    style: KTextStyle.uitext,
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30, right: 20),
                height: 200,
                width: 335,
                child: Image.asset(AssetPath.box),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'User Experinces Design !',
                style: KTextStyle.ux,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 20),
                child: Text(
                    'User experience design is the process designers use to build products that provide great experiences to their users. UX design refers to feelings and emotions users experience when interacting with a product.',
                    style: KTextStyle.uitext,
                    textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: 84,
        width: 375,
        color: kcolor.backcolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetPath.heart,
              height: 23,
              width: 24,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '4.2k',
              style: KTextStyle.bottomtext,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: kcolor.backcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                    isScrollControlled: true,
                    barrierColor: kcolor.white.withOpacity(0.8),
                    context: context,
                    builder: (context) => buildSheet());
              },
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 34),
                      height: 24,
                      width: 24,
                      child: Image.asset(
                        AssetPath.chat,
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '140',
                    style: KTextStyle.bottomtext,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 34,
            ),
            Image.asset(
              AssetPath.send,
              height: 24,
              width: 24,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '20',
              style: KTextStyle.bottomtext,
            ),
            SizedBox(
              width: 60,
            ),
            Flexible(
                child: Image.asset(
              AssetPath.book,
              height: 24,
              width: 19,
            )),
          ],
        ),
      ),
    );
  }

  Widget buildSheet() => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.9,
        minChildSize: 0.7,
        maxChildSize: 1,
        builder: (_, controller) => Container(
          padding: MediaQuery.of(context).viewInsets,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PersonProfile()));
            },
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              controller: controller,
              children: [
                SizedBox(
                    height: 600,
                    child: ListView.builder(
                        itemCount: commentsList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, top: 50, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image1"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["name"]}",
                                            style: KTextStyle.subs,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["type1"]}",
                                            style: KTextStyle.cmnttext,
                                          ),
                                          const SizedBox(
                                            width: 90,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image2"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${commentsList[index]["description"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image3"]}",
                                            height: 20,
                                            width: 21,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "${commentsList[index]["type2"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 36,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image4"]}",
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            "${commentsList[index]["type3"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 106,
                                          ),
                                          Text(
                                            "${commentsList[index]["type4"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image5"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["name"]}",
                                            style: KTextStyle.subs,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["type1"]}",
                                            style: KTextStyle.cmnttext,
                                          ),
                                          const SizedBox(
                                            width: 90,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image2"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${commentsList[index]["description1"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image3"]}",
                                            height: 20,
                                            width: 21,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "${commentsList[index]["type2"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 36,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image4"]}",
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            "${commentsList[index]["type3"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 106,
                                          ),
                                          Text(
                                            "${commentsList[index]["type4"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image6"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["name"]}",
                                            style: KTextStyle.subs,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${commentsList[index]["type1"]}",
                                            style: KTextStyle.cmnttext,
                                          ),
                                          const SizedBox(
                                            width: 90,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image2"]}",
                                            height: 30,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${commentsList[index]["description"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "${commentsList[index]["image3"]}",
                                            height: 20,
                                            width: 21,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "${commentsList[index]["type2"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 36,
                                          ),
                                          Image.asset(
                                            "${commentsList[index]["image4"]}",
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            "${commentsList[index]["type3"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                          const SizedBox(
                                            width: 106,
                                          ),
                                          Text(
                                            "${commentsList[index]["type4"]}",
                                            style: KTextStyle.bottomtext,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 1,
                                  width: 375,
                                  color: kcolor.sidecolor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          );
                        })),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 12),
                    height: 56,
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kcolor.backcolor),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Write your comment",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF787985)),
                          filled: true,
                          //contentPadding: EdgeInsets.all(0.0),
                          suffixIcon: Container(
                            margin: EdgeInsets.only(top: 17),
                            child: Image(
                              height: 20,
                              width: 20,
                              image: AssetImage(
                                'assets/images/sent.png',
                              ),
                            ),
                          ),
                          border: InputBorder.none),
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
           
          ),
        ),
      );
}
