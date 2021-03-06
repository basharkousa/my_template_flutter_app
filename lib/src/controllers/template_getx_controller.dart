import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';


class TemplateGetXController extends GetxController{

  final Repository repository;

 // var someLiveData = ApiResponse<Model>.loading("message").obs;

  TemplateGetXController(this.repository);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  fetchOdooUserToken() async {
    // odooTokenLiveData.value = ApiResponse.loading('fetchOdooUserToken');
    // try {
    //   UserOdooResponse odooTokenResponse = await repository.getOdooUserToken();
    //   print(odooTokenResponse.accessToken);
    //   await repository.saveOdooAuthToken(odooTokenResponse.accessToken);
    //   odooTokenLiveData.value = ApiResponse.completed(odooTokenResponse);
    //
    //   var tokkk = await repository.odooAuthToken;
    //   print("FromSheredPrefrences ${tokkk}");
    // }on DioError catch catch (error, stacktrace) {
    //   odooTokenLiveData.value =
    //       ApiResponse.error(DioErrorUtil.handleError(error));
    //   print(stacktrace);
    // }catch (error, stacktrace) {
    //       ApiResponse.error(DioErrorUtil.handleError(error));
    //print('Error: $stacktrace');
    // }
  }

}
