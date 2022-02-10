

import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  int selected = -1;
  List iconList = [
    {
      "id": 1,
      "icon": Icons.home,
      "isSelected": false,
    },
    {
      "id": 2,
      "icon": Icons.search,
      "isSelected": false,
    },
    {
      "id": 3,
      "icon": AssetImage(AssetPath.plus),
      "isSelected": false,
    },
    {
      "id": 4,
      "icon": Icons.bookmark_outlined,
      "isSelected": false,
    },
    {
      "id": 5,
      "icon": Icons.settings,
      "isSelected": false,
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      height: 104,
      color: kcolor.bottomcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            iconList.length,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: iconList[index]["id"] == 3
                        ? Column(
                            children: [Image(image: iconList[index]["icon"])],
                          )
                        : Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Icon(
                                  iconList[index]["icon"],
                                  size: 30,
                                  color: selected == index
                                      ? kcolor.white
                                      : Colors.grey,
                                )
                              ],
                            ),
                          ),
                  ),
                )),
      ),
    );
  }
}
