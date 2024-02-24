import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
late final double sHeight;
late final double sWidth;
const kHeightTwenty = SizedBox(
  height: 20,
);
const kHeight30 = SizedBox(
  height: 30,
);
const kHeightTen = SizedBox(
  height: 10,
);
const kHeight100 = SizedBox(
  height: 100,
);
const kHeightFive = SizedBox(
  height: 5,
);
const kwidth10 = SizedBox(
  width: 10,
);
const kwidth30 = SizedBox(
  width: 30,
);
TextStyle priceStyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: sWidth * 0.050);
TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kBlack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);
const kRadius5 = Radius.circular(5);
TextStyle kronOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}
TextStyle subHeading(
    {double fontSize = 0.025,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kWhite}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);
void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

const String errorMsg = 'Something went wrong, please try again';
