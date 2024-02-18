import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/landing/landing_screen.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    var kScreenMaxHeight = MediaQuery.of(context).size.height;
    var kScreenMaxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const LoginTextFormFiled(
                head: "URL/IP Address",
              ),
              kHeight10,
              const LoginTextFormFiled(
                head: "User Name",
              ),
              kHeight10,
              const LoginTextFormFiled(
                head: "Password",
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isRemember,
                    onChanged: (value) {
                      setState(() {
                        isRemember = !isRemember;
                      });
                    },
                    fillColor:
                        MaterialStatePropertyAll(Colors.black.withOpacity(0.2)),
                  ),
                  kWidth10,
                  smallHeadText(
                    "Remember",
                  ),
                ],
              ),
              kHeight20,
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return LandingScreen();
                      },
                    ));
                  },
                  child: const Text("Login"))
            ],
          ),
        )),
      ),
    );
  }
}

class LoginTextFormFiled extends StatelessWidget {
  const LoginTextFormFiled({super.key, required this.head});
  final String head;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        smallHeadText(head),
        kHeight10,
        TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
      ],
    );
  }
}
