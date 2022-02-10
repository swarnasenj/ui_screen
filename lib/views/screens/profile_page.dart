
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/subcription_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context, "password screen");
                    },
                    child: Image.asset(
                      AssetPath.pack,
                      height: 44,
                      width: 44,
                    )),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                  child: Text(
                'Start Your Profile',
                style: KTextStyle.veritext,
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                'This is how you\'re displayed in community',
                style: KTextStyle.verifitext,
              )),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Flexible(
                    child: Container(
                        child: Image.asset(
                      AssetPath.profile,
                      height: 80,
                      width: 80,
                    )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 215,
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Adom Shafi',
                                hintStyle: KTextStyle.intext,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kcolor.sidecolor))),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: '@adom007',
                                hintStyle: KTextStyle.intext,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kcolor.sidecolor))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 72, left: 42, right: 42),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  minWidth: 290,
                  height: 46,
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubcriptionPage()));
                  },
                  color: kcolor.purple,
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
            ],
          ),
        ),
      ),
    );
  }
}
