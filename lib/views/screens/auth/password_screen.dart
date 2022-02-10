
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/auth/verification_page.dart';


class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  bool isButtonActive = false;
   @override
  void initState() {
    super.initState();
    password_controller = TextEditingController();
    password_controller.addListener(() {
      final isButtonActive = password_controller.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }
  late TextEditingController password_controller;
  // void initState() {
  //   super.initState();
  //   email_controller = TextEditingController();
  //   email_controller.addListener(() {
  //     final isButtonActive = email_controller.text.isNotEmpty;
  //     setState(() {
  //       this.isButtonActive = isButtonActive;
  //     });
  //   });
  // }

  // void dispose() {
  //   email_controller.dispose();
  //   super.dispose();
  // }

  bool isPasswordValid(String password) => password.length == 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context, "email page");
                              },
                              child: Image.asset(
                                AssetPath.back,
                                height: 44,
                                width: 44,
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 150),
                        child: GestureDetector(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailPage()));
                          },
                          child: Text(
                            'Forget Password?',
                            style: KTextStyle.log,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      child: Text(
                    'Welcome To Confect',
                    style: KTextStyle.welcometext,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    'Enter your Password',
                    style: KTextStyle.emailtext,
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Form(
                  key: formGlobalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Your Password',
                          labelStyle: KTextStyle.usernametext,
                        ),
                        maxLength: 6,
                        obscureText: true,
                        controller: password_controller,
                        validator: (password) {
                          if (isPasswordValid(password!)) {
                            return null;
                          } else {
                            return 'Enter a valid password';
                          }
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
                                builder: (context) => VerificationPage()));
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
