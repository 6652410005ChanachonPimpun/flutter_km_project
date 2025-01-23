import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home02_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenUIState();
}

class _IntroductionScreenUIState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "SAU Hello 😍",
            body: "Welcome to Amarigay",
            image: Image.asset(
              "assets/images/pig1.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ),
          PageViewModel(
            title: "Welcome to Thailand",
            body: "งฟงฟงฟงฟงฟ",
            image: Image.asset(
              "assets/images/pig2.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ),
          PageViewModel(
            title: "🤗😑🙄🤩😣☺😍😘😳🤪🤬😱😦😧😳🤒😩",
            body: "คืองี้ครับพี่แจ็ค",
            image: Image.asset(
              "assets/images/pig3.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ),
          PageViewModel(
            title: "🎞🎁🧵🎠🎠🎟🧥🧥🧶🧶🎡🎑🎐🎎🎪🧵🧦🧦",
            body: "give me mana",
            image: Image.asset(
              "assets/images/pig4.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ),
          PageViewModel(
            title: "HHHHHEEEEELLLLOOOOOOOOOO",
            body: "POPOPOPOPOPOPOPOPOPOPOPOPOPOPOPPOPOPOPOP",
            image: Image.asset(
              "assets/images/pig5.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          "ข้าม",
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text("เรียบร้อย"),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HOME02UI(),
            ),
          );
        },
        //scrollPhysics: ,
      ),
    );
  }
}
