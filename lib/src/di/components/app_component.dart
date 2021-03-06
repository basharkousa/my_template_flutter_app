import 'package:inject/inject.dart';
import 'package:my_template_flutter_app/src/app.dart';
import 'package:my_template_flutter_app/src/data/repository.dart';
import 'package:my_template_flutter_app/src/di/modules/local_module.dart';
import 'package:my_template_flutter_app/src/di/modules/netwok_module.dart';
import 'package:my_template_flutter_app/src/di/modules/preference_module.dart';

import 'app_component.inject.dart' as g;

/// The top level injector that stitches together multiple app features into
/// a complete app.

//flutter packages pub run build_runner build --delete-conflicting-outputs
//or
//flutter packages pub run build_runner watch
//*.inject.summary;*.inject.dart;*.g.dart;

@Injector(const [NetworkModule, LocalModule, PreferenceModule])
abstract class AppComponent {

  @provide
  App get app;

  static Future<AppComponent> create(
      NetworkModule networkModule,
      LocalModule localModule,
      PreferenceModule preferenceModule,
      ) async {
    return await g.AppComponent$Injector.create(
      networkModule,
      localModule,
      preferenceModule,
    );
  }

  /// An accessor to RestClient object that an application may use.
  @provide
  Repository getRepository();
}
