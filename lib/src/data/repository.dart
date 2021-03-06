import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:inject/inject.dart';
import 'package:my_template_flutter_app/src/data/local/datasources/my_app_datasource.dart';
import 'package:my_template_flutter_app/src/data/models/test/movies_response.dart';
import 'package:my_template_flutter_app/src/data/remote/api/my_app_api.dart';
import 'package:my_template_flutter_app/src/data/sheredpref/shared_preference_helper.dart';


class Repository {
  // data source object
  final MyAppDataSource _myAppeDataSource;

  // api objects
  final MyAppApi _myAppApi;

  // shared pref object
  final SharedPreferenceHelper _sharedPrefsHelper;

  @provide
  Repository(this._myAppApi, this._sharedPrefsHelper, this._myAppeDataSource);


  /* --------------------------------API METHODS------------------------------------- */
  Future<MoviesResponse> getPopularMovies(int page) => _myAppApi.getPopular(page);

//  Future<Uint8List> uploadPhoto(String filePath) => _myAppApi.uploadPhoto(filePath:filePath);

  // Future<UserOdooResponse> getOdooUserToken() => _keplerApi.getUserOdooToken();

  /* --------------------------------SHARED_PREFERENCES METHODS------------------------------------- */

  Future<Locale> get fetchLocale => _sharedPrefsHelper.fetchLocale();


  // Future<void> saveOdooAuthToken(String authToken) =>
  //     _sharedPrefsHelper.saveOdooAuthToken(authToken);
  //
  // Future<String> get odooAuthToken => _sharedPrefsHelper.odooAuthToken;


  /* --------------------------------DATABASE METHODS------------------------------------- */


  // Future<List<Deal>> getSaleRoom(Locale appLocal) {
  //   return Future.delayed(const Duration(seconds: 1, milliseconds: 725), () {
  //     List<Deal> deals;
  //     if (appLocal == Locale("en")) {
  //       deals = Data.sale_rooms_list;
  //     } else {
  //       deals = Data.sale_rooms_list_arabic;
  //     }
  //
  //     return deals;
  //   });
  // }


}
