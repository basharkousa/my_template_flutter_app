import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/data/models/test/movies_response.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';


class HomeController extends GetxController{

  final Repository repository;

  // var someLiveData = ApiResponse<Model>.loading("message").obs;

  HomeController(this.repository);

  @override
  void onInit() {
    fetchMovieList();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
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
