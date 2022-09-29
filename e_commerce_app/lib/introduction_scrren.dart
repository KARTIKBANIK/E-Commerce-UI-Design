import 'package:e_commerce_app/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    //this is a page decoration for intro screen
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Colors.white), //tile font size, weight and color
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      bodyPadding: EdgeInsets.all(40),
      imagePadding: EdgeInsets.all(30),
    );

    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Color.fromARGB(255, 46, 46, 46),
        //main background of screen
        pages: [
          //set your page view here
          PageViewModel(
            title: "Life Style",
            body: "We Provide  high qwality product for you",
            image: introImage(
              'images/shoping1.png',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Comodity",
            body: "Your satisfaction is our number one priority",
            image: introImage('images/shoping02.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Baby Care",
            body: "Let's fulfill your dream with us",
            image: introImage('images/shoping03.png'),
            decoration: pageDecoration,
          ),

          //add more screen here
        ],

        onDone: () => goLoginpage(context), //go to home page on done
        onSkip: () => goLoginpage(context), // You can override on skip
        showSkipButton: true,

        skip: Text(
          'Skip',
          style: TextStyle(color: Colors.white),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        done: Text(
          'Getting Stated',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0), //size of dots
          color: Colors.white, //color of dots
          activeSize: Size(22.0, 10.0),
          //activeColor: Colors.white, //color of active dot
          activeShape: RoundedRectangleBorder(
            //shave of active dot
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }

  void goLoginpage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return SignIn();
    }), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}
