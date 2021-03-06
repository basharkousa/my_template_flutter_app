import 'dart:ui';

import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/configs/app_theme.dart';
import 'package:my_template_flutter_app/src/configs/lacalization/langs/ar_ar.dart';
import 'package:my_template_flutter_app/src/configs/lacalization/langs/en_us.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Localization extends Translations {
  // Default locale
  static Locale locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
    'Arabic',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final supportedLocales = [
    Locale('en', 'US'),
    Locale('ar'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
    'en': enUS,
    'ar': arAR,
  };


  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      locale = Locale('en','US');
      return Null;
    }
    locale = Locale(prefs.getString('language_code'));
    return Null;
  }

  static void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (locale == type) {
      return;
    }
    if (type == Locale("ar")) {
      locale = Locale("ar");
      await prefs.setString('language_code', 'ar');
      await prefs.setString('countryCode', '');
      print("updateLocale to ar");
      Get.updateLocale(type);
      Get.changeTheme(AppTheme.lightTheme(locale: type));
    } else {
      locale = Locale("en");
      await prefs.setString('language_code', 'en');
      await prefs.setString('countryCode', 'US');
      print("updateLocale to en");
      Get.updateLocale(type);
      Get.changeTheme(AppTheme.lightTheme(locale: type));
    }

  }

}