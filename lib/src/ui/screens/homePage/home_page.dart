import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/configs/strings.dart';
import 'package:my_template_flutter_app/src/ui/screens/homePage/home_controller.dart';

class HomePage extends StatelessWidget {
  static const String homePageRoute = "/";
  final String title;

  final HomeController controller = Get.find();

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: Container(
            child: Center(child: Text(Strings.myFlutterTemplate.tr)),
          ),
        ),
      ),
    );
  }
}
