
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/auth/password_screen.dart';


class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final formGlobalKey = GlobalKey<FormState>();
  bool isButtonActive = false;
  late TextEditingController email_controller;
  void initState() {
    super.initState();
    email_controller = TextEditingController();
    email_controller.addListener(() {
      final isButtonActive = email_controller.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  void dispose() {
    email_controller.dispose();
    super.dispose();
  }

  bool isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context, "topic_selection");
                        },
                        child: Image.asset(
                          AssetPath.back,
                          height: 44,
                          width: 44,
                        )),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                      child: Text(
                    'Welcome To Confect',
                    style: KTextStyle.welcometext,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    'Enter your username or email address',
                    style: KTextStyle.emailtext,
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Form(
                  key: formGlobalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username or Email',
                          labelStyle: KTextStyle.usernametext,
                        ),
                        controller: email_controller,
                        validator: (email) {
                          if (isEmailValid(email!))
                            return null;
                          else
                            return 'Enter a valid email address';
                        },
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 42, right: 42),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  minWidth: 290,
                  height: 46,
                  onPressed: () {
                    setState(() {
                      if (formGlobalKey.currentState!.validate()) {
                        formGlobalKey.currentState!.save();
                        isButtonActive = false;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswordScreen()));
                      }
                    });
                  },
                  color: isButtonActive
                      ? kcolor.purple
                      : kcolor.purple.withOpacity(0.4),
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
