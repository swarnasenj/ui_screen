
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/auth/reset_password.dart';


class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
              Column(
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
                    'Verification Code',
                    style: KTextStyle.veritext,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    'We send code to hellobesnik@gmail.com',
                    style: KTextStyle.verifitext,
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 1, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textfieldOTP(first: true, last: false),
                        _textfieldOTP(first: false, last: false),
                        _textfieldOTP(first: false, last: false),
                        _textfieldOTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: 'Resend ',
                            style: KTextStyle.resendtext,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'In 0:30',
                                style: KTextStyle.intext,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 60, left: 42, right: 43),
                child: MaterialButton(
                  minWidth: 290,
                  height: 46,
                  onPressed: () {
                     Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPassword()));
                  },
                  color: kcolor.purple.withOpacity(0.8),
                  //elevation: 2,
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

  Widget _textfieldOTP({required bool first, last}) {
    return Container(
        height: 85,
        width: 65,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: KTextStyle.focustext,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: kcolor.focusside),
                  borderRadius: BorderRadius.circular(35)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: kcolor.yellow),
                  borderRadius: BorderRadius.circular(35)),
            ),
          ),
        ));
  }
}
