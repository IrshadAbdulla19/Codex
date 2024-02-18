import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/customer/customer_master_screen.dart';

class HeadWidgetsForLandingPage extends StatelessWidget {
  const HeadWidgetsForLandingPage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                blurStyle: BlurStyle.outer,
                color: kBlack)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CoustomerListScreen();
                },
              ));
            },
            icon: const Icon(Icons.add),
            color: kWhite,
          ),
          const Expanded(
            child: AutoSizeText(
              "New Invoice",
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: TextStyle(color: kWhite),
            ),
          ),
        ],
      ),
    );
  }
}
