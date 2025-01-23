//splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home01UI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pig1.png',
              width: MediaQuery.of(context).size.width * 0.55,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "Flutter KM App",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
              ),
            ),
            Text(
              "สวัสดีฟลัดเตอร์",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CircularProgressIndicator(
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
