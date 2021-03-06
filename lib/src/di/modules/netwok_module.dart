import 'package:dio/dio.dart';
import 'package:inject/inject.dart';
import 'package:my_template_flutter_app/src/data/remote/api/clients/dio_client.dart';
import 'package:my_template_flutter_app/src/data/remote/api/clients/rest_client.dart';
import 'package:my_template_flutter_app/src/data/remote/api/my_app_api.dart';
import 'package:my_template_flutter_app/src/data/remote/constants/endpoints.dart';
import 'package:my_template_flutter_app/src/data/sheredpref/shared_preference_helper.dart';
import 'package:my_template_flutter_app/src/di/modules/preference_module.dart';

import 'package:shared_preferences/shared_preferences.dart';

@module
class NetworkModule extends PreferenceModule{
  // ignore: non_constant_identifier_names
  final String TAG = "NetworkModule";

//  // DI Providers:--------------------------------------------------------------
//  /// A singleton dio provider.
//  ///
//  /// Calling it multiple times will return the same instance.
 @provide
 @singleton
 Dio provideDio(SharedPreferenceHelper sharedPrefHelper) {
   final dio = Dio();
   dio
     ..options.baseUrl = Endpoints.baseUrl
     ..options.connectTimeout = Endpoints.connectionTimeout
     ..options.receiveTimeout = Endpoints.receiveTimeout
//     ..options.headers = {'Content-Type':'application/json; charset=utf-8'}
//      ..options.responseType = ResponseType.bytes
     ..interceptors.add(LogInterceptor(
       request: true,
       responseBody: true,
       requestBody: true,
       requestHeader: true,
         error: true
     ))
     ..interceptors.add(
       InterceptorsWrapper(
         onRequest: (Options options) async {
           // getting shared pref instance
           var prefs = await SharedPreferences.getInstance();

           // getting token
           // var token = prefs.getString(Preferences.odoo_auth_token);
           var token = null;
           print("token from cleint${token} ");

           if (token != null) {
             options.headers.putIfAbsent('Authorization', () => token);
           } else {
             print('Auth token is null');
           }
         },
       ),
     );

   return dio;
 }
//
//  /// A singleton dio_client provider.
//  ///
//  /// Calling it multiple times will return the same instance.
 @provide
 @singleton
 DioClient provideDioClient(Dio dio) => DioClient(dio);

//  /// A singleton dio_client provider.
//  ///
//  /// Calling it multiple times will return the same instance.
 @provide
 @singleton
 RestClient provideRestClient() => RestClient();
//
//  // Api Providers:-------------------------------------------------------------
//  // Define all your api providers here
//  /// A singleton post_api provider.
//  ///
//  /// Calling it multiple times will return the same instance.
 @provide
 @singleton
 MyAppApi provideMyAppApi(DioClient dioClient, RestClient restClient) =>
     MyAppApi(dioClient, restClient);
//// Api Providers End:---------------------------------------------------------

}
