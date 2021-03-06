import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/ui/screens/homePage/home_page.dart';

// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    HomePage.homePageRoute: (BuildContext context) => HomePage(),
   // PosePreviewPage.posePreviewRoute:(BuildContext context)=> PosePreviewPage()
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case HomePage.homePageRoute:
      //   return MaterialPageRoute(builder: (_) {
      //     return HomePage(
      //       title: "Hello from OnGenrateRoute",
      //     );
      //   });
      //   break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

  //        MaterialWithModalsPageRoute



  static void showPaymentMethodsPage(BuildContext context) {
    // showMaterialModalBottomSheet(
    //     context: context,
    //     builder: (context, scrollController) => PaymentMethodsPage(
    //           scrollController: scrollController,
    //         ));
    //  Navigator.pushNamed(context, PaymentMethodsPage.PaymentMethodsRoute);
  }

// static final pages = [
//   GetPage(
//     name: HomePage.homePageRoute,
//     page: () {
//       return HomePage();
//     },
//   ),
//   GetPage(
//     name: CameraScreen.cameraScreen,
//     page: () {
//       return CameraScreen();
//     },
//   ),
//   GetPage(
//     name: PosePreviewPage.posePreviewRoute,
//     page: () {
//       return PosePreviewPage();
//     },
//   ),
// ];

}


