import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_template_flutter_app/src/di/components/app_component.dart';
import 'package:my_template_flutter_app/src/di/modules/local_module.dart';
import 'package:my_template_flutter_app/src/di/modules/netwok_module.dart';
import 'package:my_template_flutter_app/src/di/modules/preference_module.dart';

//When you download this project review this link to change app's package name to
//your app name.
//https://stackoverflow.com/questions/51534616/how-to-change-package-name-in-flutter

AppComponent appComponent;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
//  cameras = await availableCameras();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
//    DeviceOrientation.landscapeRight,
//    DeviceOrientation.landscapeLeft
  ]).then((_) async {
    appComponent = await AppComponent.create(
      NetworkModule(),
      LocalModule(),
      PreferenceModule(),
    );

    runApp(appComponent.app);
  });
}
