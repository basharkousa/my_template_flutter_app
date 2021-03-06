import 'dart:async';

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:my_template_flutter_app/src/data/models/test/movies_response.dart';
import 'package:my_template_flutter_app/src/data/remote/api/clients/dio_client.dart';
import 'package:my_template_flutter_app/src/data/remote/api/clients/rest_client.dart';
import 'package:my_template_flutter_app/src/data/remote/constants/endpoints.dart';



class MyAppApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  MyAppApi(this._dioClient, this._restClient);


  Future<MoviesResponse> getPopular(int page) async {
    final res = await _dioClient.get("${Endpoints.getPopular}&page=${page}");
    return MoviesResponse.fromJson(res);
  }

  Future<Uint8List> uploadPhoto({String filePath})async{
    FormData data = FormData.fromMap({
        'img': await MultipartFile.fromFile(filePath,filename: "photonistPhoto.png")
      });
    final res = await _dioClient.post('', data: data, options: Options(responseType:ResponseType.bytes));
      print(res);
      return res;
  }

  // Future<UserResponse> getUserToken() async {
  //   //https://stackoverflow.com/questions/61542834/flutter-dio-post-an-object-with-array
  //
  //   // FormData data = FormData.fromMap({
  //   //   "name": "wendux",
  //   //   "age": 25,
  //   //   "file": await MultipartFile.fromFile("./text.txt",filename: "upload.txt")
  //   // });
  //   FormData data = FormData.fromMap({
  //     "username": "",
  //     "password": "",
  //     "db": "",
  //   });
  //
  //   final res = await _dioClient.post(Endpoints.auth_get_tokens, data: data);
  //   print(res);
  //   return UserOdooResponse.fromJson(res);
  // }
  //
  // Future<CompaniesResponse> getCompaniesRequest() async {
  //   Map<String, dynamic> queryParameters = {
  //     "field": jsonEncode(['name', 'email']),
  //   };
  //   final res = await _dioClient.get(Endpoints.getCompanies,
  //       queryParameters: queryParameters);
  //   //Map<String, dynamic> jsonRes = jsonEncode(res);
  //   final body = json.decode(res);
  //
  //   return CompaniesResponse.fromJson(body);
  // }
  //
  // Future<CountryResponse> getCountriesRequest() async {
  //   final res = await _dioClient.get(Endpoints.getCountriesOfActiveCompanies);
  //   //final body = json.decode(res);
  //   return CountryResponse.fromJson(res);
  // }
  //
  // Future<SignUpResponse> signUpRequest(
  //  User userInfo
  // ) async {
  //   FormData data = FormData.fromMap({
  //     "name": userInfo.name,
  //     "login": userInfo.login,
  //     "password": userInfo.password,
  //     "company_id": userInfo.company_id,
  //     "dob": "2020-10-11",
  //     "gender": "male",
  //     "is_designer": 1,
  //     "profession": "",
  //     "mobile": userInfo.mobile,
  //   });
  //   final res = await _dioClient.post(Endpoints.createPortalUser, data: data);
  //   //final body = json.decode(res);
  //   return SignUpResponse.fromJson(res);
  // }
}
