import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';

const TextTheme textTheme = TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    button: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kWhiteColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline1: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline3: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline4: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline5: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    headline6: TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w500,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    overline: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ));

ThemeData kOttaaLightThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: kPrimarySwatchColor,
  primaryColor: kPrimaryColor,
  primaryColorDark: kPrimaryDarkColor,
  primaryColorLight: kPrimaryLightColor,
  scaffoldBackgroundColor: kBackgroundColor,
  canvasColor: kBackgroundColor,
  primaryTextTheme: textTheme,
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: kPrimaryColor,
    primary: kPrimaryColor,
    background: kBackgroundColor,
    brightness: Brightness.light,
    onSurface: kDarkGrayColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.only(left: 10, top: 10),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kDarkGrayColor, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: kSecondaryColor, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kPrimaryColor, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kDarkGrayColor, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    filled: true,
    fillColor: Colors.white,
    alignLabelWithHint: true,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: kPrimaryColor,
    barBackgroundColor: kPrimaryColor,
    primaryContrastingColor: kWhiteColor,
    scaffoldBackgroundColor: kBackgroundColor,
    textTheme: CupertinoTextThemeData(
      dateTimePickerTextStyle: TextStyle(color: kPrimaryColor),
    ),
  ),
  cardTheme: const CardTheme(
    color: kCardColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  ),
  fontFamily: 'Montserrat',
  bottomAppBarTheme: const BottomAppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    shape: CircularNotchedRectangle(),
  ),
  tabBarTheme: const TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: kSecondaryColor,
        width: 2,
      ),
    ),
    labelColor: kPrimaryTextColor,
    unselectedLabelColor: kPrimaryTextColor,
    labelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    toolbarHeight: 70,
    iconTheme: IconThemeData(
      color: kPrimaryTextColor,
    ),
    toolbarTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kPrimaryTextColor,
      fontFamily: 'Montserrat',
      package: 'ottaa_ui_kit',
    ),
  ),
  iconTheme: const IconThemeData(
    color: kBlackColor,
    opacity: 1,
    size: 16,
  ),
  primaryIconTheme: const IconThemeData(
    color: kBlackColor,
    size: 16,
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color>(kPrimaryColor),
    checkColor: MaterialStateProperty.all<Color>(kWhiteColor),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  typography: Typography.material2021(
    platform: TargetPlatform.android,
    black: Typography.blackMountainView,
    white: Typography.whiteMountainView,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: kPrimaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
  ),
);
