

import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/component/page_details/details_page.dart';

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  _UiPageState createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Following", style: KTextStyle.intext),
            SizedBox(
              width: 170,
            ),
            Text("Sort By", style: KTextStyle.sort),
            SizedBox(
              width: 7,
            ),
            Image.asset(
              AssetPath.filter,
              height: 10,
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DetailsPage()));
          },
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
                        height: 26,
                        width: 26,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mansurul Haque',
                            style: KTextStyle.mansu,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Topic',
                                style: KTextStyle.bytext,
                                children: [
                                  TextSpan(
                                    text: ' : Why You Need UX In Design?',
                                    style: KTextStyle.topic,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Date ',
                            style: KTextStyle.bytext,
                            children: <TextSpan>[
                              TextSpan(
                                text: ': 8/18/2021',
                                style: KTextStyle.topic,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Why UX Design Is More \nImportant Then UI Design.',
                style: KTextStyle.ux,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Why You Need UX In Design?',
                style: KTextStyle.uitext,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'As a founder of UI HUT i discover....',
                style: KTextStyle.astext,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Read Time : 5 min',
                    style: KTextStyle.readtext,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      AssetPath.book,
                      height: 20,
                      width: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: 325,
                color: kcolor.sidecolor,
              ),
              SizedBox(height: 30,),
               Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AssetPath.waha,
                        height: 26,
                        width: 26,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Wahab Khan',
                            style: KTextStyle.mansu,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Topic',
                                style: KTextStyle.bytext,
                                children: [
                                  TextSpan(
                                    text: ' : Business In Design & Text',
                                    style: KTextStyle.topic,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Date ',
                            style: KTextStyle.bytext,
                            children: <TextSpan>[
                              TextSpan(
                                text: ': 8/18/2021',
                                style: KTextStyle.topic,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Revealing The Uniqueness Of \nYour Business In Design & Text',
                style: KTextStyle.ux,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Why I Need Uniqueness Of Your Business?',
                style: KTextStyle.uitext,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'I just discover that we all need....',
                style: KTextStyle.astext,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Read Time : 10 min',
                    style: KTextStyle.readtext,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      AssetPath.book,
                      height: 20,
                      width: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: 325,
                color: kcolor.sidecolor,
              ),
              SizedBox(height: 30,),
               Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AssetPath.ahnaf,
                        height: 26,
                        width: 26,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Ahnaf Irfan',
                            style: KTextStyle.mansu,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Topic',
                                style: KTextStyle.bytext,
                                children: [
                                  TextSpan(
                                    text: ' : Improve Your Visual Design',
                                    style: KTextStyle.topic,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, left: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Date ',
                            style: KTextStyle.bytext,
                            children: <TextSpan>[
                              TextSpan(
                                text: ': 8/18/2021',
                                style: KTextStyle.topic,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How To Make Your Visual \nDesign Better!',
                style: KTextStyle.ux,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Why You Need Visual Design?',
                style: KTextStyle.uitext,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'As a visual designer i experince that....',
                style: KTextStyle.astext,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Read Time : 7 min',
                    style: KTextStyle.readtext,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      AssetPath.book,
                      height: 20,
                      width: 15,
                    ),
                  )
                ],
              ),
              
            ],
          ),
          
        )
      ],
    );
  }
}
