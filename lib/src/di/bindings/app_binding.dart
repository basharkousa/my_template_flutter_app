import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/controllers/appController/app_controller.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';
import 'package:my_template_flutter_app/src/ui/screens/homePage/home_controller.dart';
import 'package:my_template_flutter_app/src/ui/screens/homePage/home_page.dart';



class AppBindings extends Bindings {
  final Repository repository;

  // final GlobalAppBloc globalAppBloc;

  AppBindings(this.repository);

  @override
  void dependencies() {

    Get.put(repository, permanent: true);

    Get.create<AppController>((){
      print('create<GlobalAppController>');
      return AppController(repository);
    });
    Get.create<HomeController>((){
      return HomeController(repository);
    });
    /*---------------------------- ACCOUNT CONTROLLERS -------------------------------*/

    // Get.lazyPut<LoginController>(() {
    //   return LoginController(repository);
    // });
    //
    // Get.create<SignUpController>(() {
    //   return SignUpController(repository);
    // });
    //
    // //I added lazyPut for when I change language doesn't refresh and call the request.
    // Get.lazyPut<SelectLanguageController>(() {
    //   return SelectLanguageController(repository);
    // });

    /*---------------------------- SHOPS CONTROLLERS -------------------------------*/

  }
}
