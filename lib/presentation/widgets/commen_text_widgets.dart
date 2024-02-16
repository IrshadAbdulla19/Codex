import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

Widget smallHeadText(String text) {
  return AutoSizeText(text, style: TextStyle(fontWeight: FontWeight.bold));
}

Widget mainHeadText(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: kWhite,
    ),
    minFontSize: 18,
  );
}
