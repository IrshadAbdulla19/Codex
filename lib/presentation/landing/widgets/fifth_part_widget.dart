import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

class FifthPartWidget extends StatelessWidget {
  const FifthPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
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
        const Column(
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
