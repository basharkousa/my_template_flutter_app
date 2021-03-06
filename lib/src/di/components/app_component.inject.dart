import 'app_component.dart' as _i1;
import '../modules/local_module.dart' as _i2;
import 'package:sqflite_common/sqlite_api.dart' as _i3;
import 'dart:ui' as _i4;
import '../modules/preference_module.dart' as _i5;
import '../../data/sheredpref/shared_preference_helper.dart' as _i6;
import 'package:dio/src/dio.dart' as _i7;
import '../../data/remote/api/clients/dio_client.dart' as _i8;
import '../../data/remote/api/clients/rest_client.dart' as _i9;
import '../../data/remote/api/my_app_api.dart' as _i10;
import '../../data/local/datasources/my_app_datasource.dart' as _i11;
import '../../data/repository.dart' as _i12;
import 'dart:async' as _i13;
import '../modules/netwok_module.dart' as _i14;
import '../../app.dart' as _i15;

class AppComponent$Injector implements _i1.AppComponent {
  AppComponent$Injector._(this._localModule, this._preferenceModule);

  final _i2.LocalModule _localModule;

  _i3.Database _database;

  _i4.Locale _locale;

  final _i5.PreferenceModule _preferenceModule;

  _i6.SharedPreferenceHelper _singletonSharedPreferenceHelper;

  _i7.Dio _singletonDio;

  _i8.DioClient _singletonDioClient;

  _i9.RestClient _singletonRestClient;

  _i10.MyAppApi _singletonMyAppApi;

  _i11.MyAppDataSource _singletonMyAppDataSource;

  _i12.Repository _singletonRepository;

  static _i13.Future<_i1.AppComponent> create(
      _i14.NetworkModule _,
      _i2.LocalModule localModule,
      _i5.PreferenceModule preferenceModule) async {
    final injector = AppComponent$Injector._(localModule, preferenceModule);
    injector._database = await injector._localModule.provideDatabase();
    injector._locale = await injector._localModule
        .provideLocalization(injector._createRepository());
    return injector;
  }

  _i15.App _createApp() => _i15.App(_createLocale(), _createRepository());
  _i4.Locale _createLocale() => _locale;
  _i12.Repository _createRepository() =>
      _singletonRepository ??= _localModule.provideRepository(_createMyAppApi(),
          _createSharedPreferenceHelper(), _createMyAppDataSource());
  _i10.MyAppApi _createMyAppApi() => _singletonMyAppApi ??=
      _localModule.provideMyAppApi(_createDioClient(), _createRestClient());
  _i8.DioClient _createDioClient() =>
      _singletonDioClient ??= _localModule.provideDioClient(_createDio());
  _i7.Dio _createDio() => _singletonDio ??=
      _localModule.provideDio(_createSharedPreferenceHelper());
  _i6.SharedPreferenceHelper _createSharedPreferenceHelper() =>
      _singletonSharedPreferenceHelper ??=
          _preferenceModule.provideSharedPreferenceHelper();
  _i9.RestClient _createRestClient() =>
      _singletonRestClient ??= _localModule.provideRestClient();
  _i11.MyAppDataSource _createMyAppDataSource() => _singletonMyAppDataSource ??=
      _localModule.provideMyAppDataSource(_createDatabase());
  _i3.Database _createDatabase() => _database;
  @override
  _i15.App get app => _createApp();
  @override
  _i12.Repository getRepository() => _createRepository();
}
