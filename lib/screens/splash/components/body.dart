import 'package:flutter/material.dart';
import 'package:uishop/constants.dart';
import 'package:uishop/size_config.dart';

class Body extends StatefulWidget {
  // const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Pataspare Marketplace.\nLet's Shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We Help People Connect with Sparepart Vendors\nacross Kenya!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We shall get you sorted quickly and get \nyou the best prices at the same time!",
      "image": "assets/images/splash_1.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "PATASPARE",
          style: TextStyle(
            fontSize: getProportionateScreenHWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenHWidth(235),
        ),
      ],
    );
  }
}
