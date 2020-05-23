import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/style/colors.dart';

ThemeData buildTheme(BuildContext context) {
  final ThemeData kThemeLight = ThemeData.light();
  return kThemeLight.copyWith(
    backgroundColor: kYellow,
    primaryColor: kYellow,
    accentColor: kBlack,
    highlightColor: kBlack,
    scaffoldBackgroundColor: kYellow,
    buttonTheme: kThemeLight.buttonTheme.copyWith(
      buttonColor: kBlack,
      textTheme: ButtonTextTheme.normal,
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.bebasNeue(
        fontSize: 18,
        color: kWhite,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.varelaRound(
        fontSize: 14, // 16
        color: kWhite,
        fontWeight: FontWeight.w600,
      ),
      subtitle1: GoogleFonts.varelaRound(
        fontSize: 14,
        color: kWhite,
        fontWeight: FontWeight.w300,
      ),
      subtitle2: GoogleFonts.varelaRound(
        fontSize: 12,
        color: kWhite,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: GoogleFonts.varelaRound(
        fontSize: 12,
        color: kWhite,
        fontWeight: FontWeight.w300,
      ),
      bodyText2: GoogleFonts.varelaRound(
        fontSize: 8,
        color: kWhite,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
