import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:inject/inject.dart';
import 'package:my_template_flutter_app/src/data/local/datasources/my_app_datasource.dart';
import 'package:my_template_flutter_app/src/data/remote/api/my_app_api.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';
import 'package:my_template_flutter_app/src/data/sheredpref/shared_preference_helper.dart';
import 'package:my_template_flutter_app/src/di/modules/netwok_module.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@module
class LocalModule extends NetworkModule{
  // DI variables:--------------------------------------------------------------

  // constructor
  // Note: Do not change the order in which providers are called, it might cause
  // some issues
  LocalModule() {
//    database = provideDatabase();
  }

  // DI Providers:--------------------------------------------------------------

  @provide
  @singleton
  @asynchronous
  Future<Database> provideDatabase() async {
    Database _db;
    String path = join(await getDatabasesPath(), 'MyTemplateAppDb.db');
    _db = await openDatabase(path, version: 1, onCreate: (Database db, int v) {
      //create tables
      db.execute(
          'create table User(id integer primary key autoincrement, name varchar(50), login varchar(255), password varchar(255), company_id varchar(255)), dob varchar(255), gender varchar(255), is_designer integer, profession varchar(255), mobile integer');
    }, onUpgrade: (Database db, int oldV, int newV) async {
      if (oldV < newV) {
       // await db.execute("alter table courses add column level varchar(50) ");
      }
    });
   //https://pub.dev/packages/sqflite
   //  await _db.transaction((txn) async {
   //    int id1 = await txn.rawInsert(
   //        'INSERT INTO courses(name, content,hours) VALUES("Android", "This course for learn android app development",5)');
   //    print('inserted1: $id1');
   //    int id2 = await txn.rawInsert(
   //        'INSERT INTO courses(name, content,hours) VALUES(?, ?, ?)',
   //        ['c++', "for learn c++ language", 3]);
   //    print('inserted2: $id2');
   //  });

    return _db;
  }

  @provide
  @singleton
  MyAppDataSource provideMyAppDataSource(Database _db) =>
      MyAppDataSource(_db);

  @provide
  @singleton
  Repository provideRepository(
    MyAppApi myAppApiApi,
    SharedPreferenceHelper preferenceHelper,
    MyAppDataSource myAppDataSource,
  ) =>
      Repository(myAppApiApi, preferenceHelper, myAppDataSource);

  @provide
  @singleton
  @asynchronous
  Future<Locale> provideLocalization(Repository repository) async {
    Locale appLanguage =  await repository.fetchLocale;
    return appLanguage;
  }

  // @provide
  // @singleton
  // @asynchronous
  // Future<AppLanguage> provideAppLanguage() async {
  //   AppLanguage appLanguage = AppLanguage();
  //   await appLanguage.fetchLocale();
  //   return appLanguage;
  // }


}
