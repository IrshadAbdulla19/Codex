import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forNAvigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codex_logo.gif"))),
      ),
    );
  }

  forNAvigation() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return LoginScreen();
      },
    ));
  }
}
