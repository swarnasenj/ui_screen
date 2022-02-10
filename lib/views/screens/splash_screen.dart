
import 'package:flutter/material.dart';
import 'package:ui_hut/constant/asset_path.dart';
import 'package:ui_hut/style/k_color.dart';
import 'package:ui_hut/style/k_text_style.dart';
import 'package:ui_hut/views/screens/topic_selection.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    // TODO: implement initState

    Future.delayed(Duration(seconds: 3), () {
      print("After 3 seconds");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TopicSelection()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.white,
      body:Center(
        child: Container(
          alignment: Alignment.center,
          child: Image.asset(AssetPath.splash, height: 95, width: 95,)
          ),
                
      ),
      
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Text("Powered by UI HUT",
        style: KTextStyle.headline2,
        textAlign: TextAlign.center,),
      ), 
      
      
    );
  }
}