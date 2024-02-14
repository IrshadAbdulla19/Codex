import 'package:flutter/material.dart';

const kBlack = Colors.black;
const kWhite = Colors.white;
const kGray = Colors.grey;

const kHeight10 = SizedBox(
  height: 10,
);
const kHeight5 = SizedBox(
  height: 5,
);
const kHeight20 = SizedBox(
  height: 20,
);

const MaterialColor kMaterialPrimaryColor =
    MaterialColor(_kmaterialprimarycolorPrimaryValue, <int, Color>{
  50: Color(0xFFECE6F2),
  100: Color(0xFFD0C1DF),
  200: Color(0xFFB098CA),
  300: Color(0xFF906FB5),
  400: Color(0xFF7950A5),
  500: Color(_kmaterialprimarycolorPrimaryValue),
  600: Color(0xFF592C8D),
  700: Color(0xFF4F2582),
  800: Color(0xFF451F78),
  900: Color(0xFF331367),
});
const int _kmaterialprimarycolorPrimaryValue = 0xFF613195;

const MaterialColor kmaterialprimarycolorAccent =
    MaterialColor(_kmaterialprimarycolorAccentValue, <int, Color>{
  100: Color(0xFFC09EFF),
  200: Color(_kmaterialprimarycolorAccentValue),
  400: Color(0xFF7D38FF),
  700: Color(0xFF6C1FFF),
});
const int _kmaterialprimarycolorAccentValue = 0xFF9E6BFF;
