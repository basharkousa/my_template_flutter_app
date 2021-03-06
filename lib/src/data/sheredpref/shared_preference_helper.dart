import 'dart:async';
// import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  final Future<SharedPreferences> _sharedPreference;

  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------

  Future<String> get odooAuthToken async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.odoo_auth_token);
    });
  }

  Future<void> saveOdooAuthToken(String authToken) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.odoo_auth_token, authToken);
    });
  }

  Future<void> removeOdooAuthToken() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.odoo_auth_token);
    });
  }

  Future<int> get companyId async {
    return _sharedPreference.then((preference) {
      return preference.getInt(Preferences.companyId);
    });
  }

  Future<void> saveCompanyId(int companyId) async {
    return _sharedPreference.then((preference) {
      preference.setInt(Preferences.companyId, companyId);
    });
  }

//   Future<String> get authToken async {
//     return _sharedPreference.then((preference) {
//       return preference.getString(Preferences.auth_token);
//     });
//   }
//
//   Future<void> saveAuthToken(String authToken) async {
//     return _sharedPreference.then((preference) {
//       preference.setString(Preferences.auth_token, authToken);
//     });
//   }
//
//   Future<void> removeAuthToken() async {
//     return _sharedPreference.then((preference) {
//       preference.remove(Preferences.auth_token);
//     });
//   }
//
//   Future<bool> get isLoggedIn async {
//     return _sharedPreference.then((preference) {
//       return preference.getString(Preferences.auth_token) ?? false;
//     });
//   }
//
// /*
//   Theme:------------------------------------------------------
// */
//   Future<bool> get isDarkMode {
//     return _sharedPreference.then((prefs) {
//       return prefs.getBool(Preferences.is_dark_mode) ?? false;
//     });
//   }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(Preferences.is_dark_mode, value);
    });
  }

  // Language:---------------------------------------------------
  Future<String> get currentLanguage {
    return _sharedPreference.then((prefs) {
      return prefs.getString(Preferences.current_language);
    });
  }

  Future<Locale> fetchLocale() async {
    Locale locale = Locale('en', 'US');
    return _sharedPreference.then((prefs) {
      print("Current_Language_preff ${prefs.getString('language_code')}");
      if (prefs.getString('language_code') == null) {
        locale = Locale('en', 'US');
        return locale;
      }
      locale = Locale(prefs.getString('language_code'));
      return locale;
    });
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(Preferences.current_language, language);
    });
  }
}
