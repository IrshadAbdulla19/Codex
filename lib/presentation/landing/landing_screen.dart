import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ),
          SizedBox(
            height: kHht * 0.08,
            child: const Row(
              children: [
                Expanded(child: HeadWidgetsForLandingPage()),
                Expanded(child: HeadWidgetsForLandingPage()),
                Expanded(child: HeadWidgetsForLandingPage()),
              ],
            ),
          ),
          SizedBox(height: kHht * 0.36, child: LandingPageTableWidget()),
          SizedBox(
              height: kHht * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TableBottomWidgets(),
                  TableBottomWidgets(),
                ],
              )),
          SizedBox(height: kHht * 0.15, child: ThirdPartWidget()),
          SizedBox(height: kHht * 0.08, child: ForthPartWidget()),
          SizedBox(height: kHht * 0.08, child: FifthPartWidget()),
        ],
      ),
    ));
  }
}

class TableBottomWidgets extends StatelessWidget {
  const TableBottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Icon(Icons.abc), AutoSizeText("data")],
      ),
    );
  }
}

class HeadWidgetsForLandingPage extends StatelessWidget {
  const HeadWidgetsForLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: kMaterialPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                blurStyle: BlurStyle.outer,
                color: kMaterialPrimaryColor)
          ]),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
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

class ThirdPartWidget extends StatelessWidget {
  const ThirdPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kGray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ThirdPartItemWidget(), ThirdPartItemWidget()],
              ),
            ),
            SizedBox(
              width: 3,
              child: Container(
                color: kGray,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ThirdPartItemWidget(), ThirdPartItemWidget()],
              ),
            ),
          ],
        ));
  }
}

class ThirdPartItemWidget extends StatelessWidget {
  const ThirdPartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      color: kWhite,
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AutoSizeText("data"),
              AutoSizeText("data"),
              AutoSizeText("data"),
            ],
          ),
          Icon(Icons.navigate_next)
        ],
      ),
    );
  }
}

class ForthPartWidget extends StatelessWidget {
  const ForthPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      color: kGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: ThirdPartItemWidget()),
          SizedBox(
            width: 3,
            child: Container(
              color: kGray,
            ),
          ),
          Expanded(child: ThirdPartItemWidget())
        ],
      ),
    );
  }
}

class FifthPartWidget extends StatelessWidget {
  const FifthPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            AutoSizeText("data"),
            AutoSizeText("data"),
            AutoSizeText("data"),
          ],
        ),
        SizedBox(
          width: 3,
          child: Container(
            color: kGray,
          ),
        ),
        Column(
          children: [
            AutoSizeText("data"),
            AutoSizeText("data"),
            AutoSizeText("data"),
          ],
        ),
      ],
    );
  }
}

class LandingPageTableWidget extends StatelessWidget {
  const LandingPageTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGray,
      child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 4),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: TableItemWidget(),
              )),
    );
  }
}

class TableItemWidget extends StatelessWidget {
  const TableItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Column(
        children: [Icon(Icons.abc), AutoSizeText("invoice")],
      ),
    );
  }
}
