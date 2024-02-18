import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class CoustomerListScreen extends StatelessWidget {
  const CoustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => kHeight10,
        itemBuilder: (context, index) {
          return CoustomerListItem(
            amount: "200",
            name: "urname",
            subname: "ursub name",
          );
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [smallHeadText(name), Text(subname)],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(amount),
            Row(
              children: [
                Icon(Icons.cancel_schedule_send_outlined),
                kWidth5,
                Text("Send Remainder")
              ],
            )
          ],
        ),
      ],
    ));
  }
}
