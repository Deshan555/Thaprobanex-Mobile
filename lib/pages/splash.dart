import '../components/core/button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/core/devider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  void onxPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                'ThaprobaneX',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Brewing Sri Lanka's Heritage, Digitizing Tea Excellence",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Lottie.asset(
                'assets/splash.json',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 40),

              const Button(text: 'Login To ThaprobaneX',
                  onPressed: null,
                  color: Colors.green,
                  textColor: Colors.white,
                  textSize: 13,
                  boldStatus: false,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  icon: null,
                  iconColor: Colors.white,
                  iconSize: 12,
                  iconPadding: EdgeInsets.all(10),
                  iconPosition: MainAxisAlignment.center,
                  loading: false,
                  loadingColor: Colors.white,
                  loadingSize: 10,
                  loadingPadding: EdgeInsets.all(10),
                  loadingPosition: MainAxisAlignment.center,
                  elevation: 0,
                  width: 200,
                  height: 30,
              ),
              const SizedBox(height: 40),
              const Text(
                "v1.0.0",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
