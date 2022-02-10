import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/email_page.dart';


class TopicSelection extends StatefulWidget {
  const TopicSelection({Key? key}) : super(key: key);

  @override
  _TopicSelectionState createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  // bool isselected = false;
  //int _index = 0;
  List itemlist = [
    {
      "item": 'UI Design',
      "isselected": false,
    },
    {
      "item": 'UX Design',
      "isselected": false,
    },
    {
      "item": 'Blog Design',
      "isselected": false,
    },
    {
      "item": 'Visual Design',
      "isselected": false,
    },
    {
      "item": 'Motion',
      "isselected": false,
    },
    {
      "item": 'Graphic',
      "isselected": false,
    },
    {
      "item": 'Typography',
      "isselected": false,
    },
    {
      "item": '3d',
      "isselected": false,
    },
    {
      "item": 'Icon',
      "isselected": false,
    },
    {
      "item": 'News',
      "isselected": false,
    },
    {
      "item": 'Business',
      "isselected": false,
    },
    {
      "item": 'Sports',
      "isselected": false,
    },
    {
      "item": 'Fashion',
      "isselected": false,
    },
    {
      "item": 'Technology',
      "isselected": false,
    },
    {
      "item": 'Health',
      "isselected": false,
    },
    {
      "item": 'Shoping',
      "isselected": false,
    },
    {
      "item": 'Music',
      "isselected": false,
    },
    {
      "item": 'Video',
      "isselected": false,
    },
    {
      "item": 'Recipe',
      "isselected": false,
    },
    {
      "item": 'Fun',
      "isselected": false,
    },
    {
      "item": 'Entertenment',
      "isselected": false,
    },
    {
      "item": 'Creative',
      "isselected": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Container(
                      child: Image.asset(
                        AssetPath.splash,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 220),
                    child: GestureDetector(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailPage()));
                      // },
                      child: Text(
                        'Log In',
                        style: KTextStyle.log,
                        
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Pick Topic to Start\nReading.....',
                style: KTextStyle.headline1,
              ),
              SizedBox(
                height: 32,
              ),
              Wrap(
                spacing: 12.0,
                children: [
                  for (var item in itemlist)
                    Container(
                      height: 34,
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        border: !item["isselected"]
                            ? Border.all(color: Colors.grey.withOpacity(0.2))
                            : null,
                        borderRadius: BorderRadius.circular(18),
                        color: item["isselected"] ? kcolor.yellow : kcolor.blue,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            item["isselected"] = !item["isselected"];
                          });
                        },
                        child: Chip(
                          backgroundColor:
                              item["isselected"] ? kcolor.yellow : kcolor.blue,
                          labelStyle: KTextStyle.boxback
                              .copyWith(color: kcolor.boxtext),
                          label: Text(
                            item["item"],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(                  
                  ),
                  child: MaterialButton(
                    minWidth: 290,
                    height: 46,
                    onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailPage()));

                    },
                    color: itemlist[0]["isselected"] ? kcolor.purple : kcolor.purple.withOpacity(0.3),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: kcolor.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
