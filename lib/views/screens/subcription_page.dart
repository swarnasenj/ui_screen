
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/explore_page.dart';


class SubcriptionPage extends StatefulWidget {
  const SubcriptionPage({Key? key}) : super(key: key);

  @override
  _SubcriptionPageState createState() => _SubcriptionPageState();
}

class _SubcriptionPageState extends State<SubcriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
      appBar: AppBar(
        backgroundColor: kcolor.backcolor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, "password screen");
          },
          child: Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              height: 44,
              width: 44,
              child: Image.asset(
                AssetPath.pack,
                height: 44,
                width: 44,
              )),
        ),
        title: Container(
          margin: EdgeInsets.only(
            left: 50,
          ),
          child: Text(
            'Subscriptions',
            style: KTextStyle.subs,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 40, right: 20, top: 18),
              child: Text(
                'Skip',
                style: KTextStyle.skip,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 74,
              ),
              Center(
                child: Image.asset(
                  AssetPath.logo,
                  height: 80,
                  width: 80,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 60, top: 20),
                child: Text(
                  'Be Our Premium Member',
                  style: KTextStyle.betext,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 32, right: 32, top: 12),
                child: Text(
                  'Cancel at any time, effective at the end of the payment period.',
                  style: KTextStyle.verifitext,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 48, top: 60),
                child: Text(
                  'By selecting the monthy or annual subscription button below, you are agreeing to start your subscription immediately, and you will be able to withdraw from the contract or recive a refund. You can cancel it at anytime. No refunds or credits will be given for partial month or years.',
                  style: KTextStyle.bytext,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  minWidth: 335,
                  height: 58,
                  onPressed: () {
                    // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PasswordScreen()));
                  },
                  color: kcolor.buttonbackcolor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Text(
                    '\$11.98 / month',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kcolor.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  minWidth: 335,
                  height: 58,
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExplorePage()));
                  },
                  color: kcolor.buttonbackcolor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Text(
                    '\$119.98 / year',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kcolor.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 34, right: 34, top: 20),
                child: Text(
                  '(12 months at \$10.00/month, Save over 15%)',
                  style: KTextStyle.verifitext,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
