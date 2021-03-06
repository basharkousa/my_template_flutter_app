
import 'dart:io';

/**
 * Creating custom color palettes is part of creating a custom app. The idea is to create
 * your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
 * object with those colors you just defined.
 *
 * Resource:
 * A good resource would be this website: http://mcg.mbitson.com/
 * You simply need to put in the colour you wish to use, and it will generate all shades
 * for you. Your primary colour will be the `500` value.
 *
 * Colour Creation:
 * In order to create the custom colours you need to create a `Map<int, Color>` object
 * which will have all the shade values. `const Color(0xFF...)` will be how you create
 * the colours. The six character hex code is what follows. If you wanted the colour
 * #114488 or #D39090 as primary colours in your theme, then you would have
 * `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
 *
 * Usage:
 * In order to use this newly created theme or even the colours in it, you would just
 * `import` this file in your project, anywhere you needed it.
 * `import 'path/to/theme.dart';`
 */

import 'package:flutter/material.dart';
import 'colors.dart';
import 'font_family.dart';

class AppTheme {
  AppTheme._();
  static const String fontName = 'Montserrat';

  static ThemeData lightTheme({@required Locale locale}) => ThemeData(
    backgroundColor: AppColors.lightBG,
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.primaryColorDark,
    accentColor: AppColors.lightAccent,
    cursorColor: AppColors.lightAccent,
    //platform: Platform.isAndroid ? TargetPlatform.android : TargetPlatform.iOS,
    platform:TargetPlatform.iOS,
    fontFamily:locale.languageCode == "en"? FontFamily.montserrat:FontFamily.avenir,
    scaffoldBackgroundColor: AppColors.lightBG,
    appBarTheme: AppBarTheme(
      //elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: AppColors.darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
 //         fontFamily:locale.languageCode=="en"?FontFamily.montserrat:FontFamily.avenir,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColors.darkBG,
    primaryColor: AppColors.darkPrimary,
    accentColor: AppColors.darkAccent,
    scaffoldBackgroundColor: AppColors.darkBG,
    cursorColor: AppColors.darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: AppColors.lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static const List<Shadow> textShadow = <Shadow>[
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 0),
    ),
  ];
  static const TextTheme textTheme = TextTheme(
    display1: display1,
    headline: headline,
    title: title,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: AppColors.darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: AppColors.darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: AppColors.darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: AppColors.darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: AppColors.darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: AppColors.darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: AppColors.lightText, // was lightText
  );
}

//final ThemeData themeData = new ThemeData(
//    platform: TargetPlatform.iOS,
//    fontFamily: FontFamily.productSans,
//    brightness: Brightness.light,
//    primaryColor: AppColors.primaryColor,
//    primaryColorBrightness: Brightness.light,
//    accentColor: AppColors.accentColor,
//    accentColorBrightness: Brightness.light);
//
//final ThemeData themeDataDark = ThemeData(
//  fontFamily: FontFamily.productSans,
//  brightness: Brightness.dark,
//  primaryColor: AppColors.primaryColor,
//  primaryColorBrightness: Brightness.dark,
//  accentColor: AppColors.accentColor,
//  accentColorBrightness: Brightness.dark,
//);
