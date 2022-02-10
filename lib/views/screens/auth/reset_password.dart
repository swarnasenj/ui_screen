
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/profile_page.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formGlobalKey = GlobalKey<FormState>();
  bool isButtonActive = false;
  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _confirmPasswordController = TextEditingController();
    _confirmPasswordController.addListener(() {
      final isButtonActive = _confirmPasswordController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }
  final _passwordController = TextEditingController();
  late TextEditingController _confirmPasswordController;
  bool _obscuretext = true;

  bool isPasswordValid(String password) => password.length == 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.backcolor,
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
                                AssetPath.pack,
                                height: 44,
                                width: 44,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      child: Text(
                    'Reset Password',
                    style: KTextStyle.veritext,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                    'Enter your new password',
                    style: KTextStyle.verifitext,
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
                            //labelText: 'Your Password',
                            //hintStyle: KTextStyle.dottext,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscuretext = !_obscuretext;
                                });
                              },
                              child: Icon(
                                _obscuretext
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: kcolor.white,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: kcolor.sidecolor))),
                        maxLength: 6,
                        obscureText: _obscuretext,
                        obscuringCharacter: '●',
                        style: KTextStyle.dottext,
                        controller: _passwordController,
                        validator: (password) {
                          if (isPasswordValid(password!)) {
                            return null;
                          } else {
                            return 'Enter a valid password';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: KTextStyle.confirmtext,
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: kcolor.sidecolor))),
                        maxLength: 6,
                         obscureText: _obscuretext,
                         obscuringCharacter: '●',
                        style: KTextStyle.dottext,
                        controller: _confirmPasswordController,
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
                                builder: (context) => ProfilePage()));
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
