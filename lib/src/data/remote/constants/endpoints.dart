
class Endpoints {
  Endpoints._();

  // base url
 // static const String baseUrl = "http://example/example";
 static const String baseUrl = "http://api.themoviedb.org/3/movie";

 // static const apiKey = '?api_key=example';
  static const baseImageUrl = "https://image.exampe.com/t/p/w342";

  //static const String baseUrl = "http://api.themoviedb.org/3/movie";
  static const apiKey = '?api_key=4c62715312a67408440a50eede0d28cc';
  static const String getPosts = baseUrl + "/posts";
  static const String getPopular = baseUrl+"/popular"+apiKey;


  // receiveTimeout
  static const int receiveTimeout = 5000;


  // connectTimeout
  static const int connectionTimeout = 60000;

  // booking endpoints

  // Authentication endPoints--------------------------------------------------
 static const String auth_get_tokens = "auth/get_tokens";
  // static const String auth_get_tokens = baseUrl+"/popular"+apiKey;



 Map<String, dynamic> queryParameters = {
  "field": ['name', 'email'],
 };

 List<String> list = ['name', 'email'];


}