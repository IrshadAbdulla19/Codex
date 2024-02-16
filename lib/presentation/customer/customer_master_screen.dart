import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class CoustomerListScreen extends StatelessWidget {
  const CoustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return kHeight10;
        },
        itemCount: 10,
      ),
    );
  }
}

class CoustomerListItem extends StatelessWidget {
  const CoustomerListItem(
      {super.key,
      required this.name,
      required this.subname,
      required this.amount});
  final String name;
  final String subname;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Row(
      children: [
        Column(
          children: [smallHeadText(name), Text(subname)],
        ),
        Column(
          children: [
            Text(amount),
            Row(
              children: [],
            )
          ],
        ),
      ],
    ));
  }
}
