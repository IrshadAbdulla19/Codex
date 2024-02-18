import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

import 'widgets/fifth_part_widget.dart';
import 'widgets/fourth_part_widget.dart';
import 'widgets/head_widget.dart';
import 'widgets/landing_page_table.dart';
import 'widgets/table_bottom_widget.dart';
import 'widgets/third_part_widget.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    var kHht = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ),
            SizedBox(
              height: kHht * 0.08,
              child: const Row(
                children: [
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "New invoiew",
                  )),
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "",
                  )),
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "",
                  )),
                ],
              ),
            ),
            SizedBox(height: kHht * 0.38, child: LandingPageTableWidget()),
            SizedBox(
                height: kHht * 0.08,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TableBottomWidgets(
                      name: "Reports",
                      icon: Icons.view_list_outlined,
                    ),
                    TableBottomWidgets(
                      name: "Purchase Return",
                      icon: Icons.maps_home_work_rounded,
                    ),
                  ],
                )),
            SizedBox(height: kHht * 0.15, child: const ThirdPartWidget()),
            SizedBox(height: kHht * 0.08, child: const ForthPartWidget()),
            // SizedBox(height: kHht * 0.08, child: const FifthPartWidget()),
          ],
        ),
      ),
    ));
  }
}
