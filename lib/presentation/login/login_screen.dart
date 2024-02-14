import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var kScreenMaxHeight = MediaQuery.of(context).size.height;
    var kScreenMaxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: kBlack,
        child: Center(
          child: Container(
            // width: 200, height: 400,
            width: kScreenMaxWidth * 0.8,
            height: kScreenMaxHeight * 0.7,
            decoration: BoxDecoration(
              color: kWhite.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              // boxShadow: const [
              //   BoxShadow(
              //       color: kWhite,
              //       blurRadius: 9,
              //       blurStyle: BlurStyle.outer,
              //       spreadRadius: 9)
              // ]
            ),
          ),
        ),
      ),
    );
  }
}
