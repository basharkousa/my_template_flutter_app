import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/data/models/api_response.dart';
import 'package:my_template_flutter_app/src/data/models/test/movies_response.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';


class AppController extends GetxController {

  final Repository repository;

//  static AppController controller = Get.find();

  // var photoResponseLiveData = ApiResponse<MoviesResponse>.loading("message").obs;
  AppController(this.repository);

 // String filePath = Get.arguments;

  @override
  void onInit() {
    //fetchMovieList();
    super.onInit();
  }



  fetchMovieList() async {
    // movieResponse.value = ApiResponse<MoviesResponse>.loading('Fetching Popular Movies');
    try {
      MoviesResponse movies = await repository.getPopularMovies(1);
     // movieList = movies;
     //  movieResponse.value = ApiResponse<MoviesResponse>.completed(movies);
    } catch (error, stacktrace) {
      // movieResponse.value  = ApiResponse<MoviesResponse>.error(DioErrorUtil.handleError(error));
      print(stacktrace);
    }
  }

}