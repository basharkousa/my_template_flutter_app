import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:inject/inject.dart';
import 'package:my_template_flutter_app/src/configs/app_theme.dart';
import 'package:my_template_flutter_app/src/configs/lacalization/localization.dart';
import 'package:my_template_flutter_app/src/configs/routes.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';
import 'package:my_template_flutter_app/src/di/bindings/app_binding.dart';
import 'package:my_template_flutter_app/src/ui/screens/homePage/home_page.dart';

class App extends StatelessWidget {
  // final AppLanguage appLanguage;
  final Repository repository;
  final Locale currentAppLanguage;
  @provide
  App(this.currentAppLanguage,
      this.repository) : super();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
//      statusBarBrightness: Platform.isAndroid ? Brightness.light : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return GetMaterialApp(
        debugShowMaterialGrid: false,
        title: "My Template Flutter",
        initialBinding: AppBindings(repository),
        //locale: currentAppLanguage,
        translations: Localization(),
        locale: Get.deviceLocale,
        theme: AppTheme.lightTheme(locale: Get.deviceLocale),
        initialRoute: HomePage.homePageRoute,
        // initialRoute: HomePage.homePageRoute,
        onGenerateRoute: Routes.generateRoute,
        routes: Routes.routes);
    ;
  }
}
