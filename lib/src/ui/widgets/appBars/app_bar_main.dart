import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/configs/assets.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;

  AppBarMain({this.automaticallyImplyLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(0),
        child: WebsafeSvg.asset("Assets.ic_kplr_logo"),
      ),
      actions: <Widget>[
        InkWell(
          // onTap: () {
          //   Navigator.pushNamed(context, SearchTypingPage.SearchPageRoute);
          // },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: WebsafeSvg.asset(Assets.ic_search),
          ),
          // onTap: () => Navigator.pushNamed(context,SelectLanguagesPage.selectLanguagesRoute),
        ),
        InkWell(
          onTap: () {
            //Navigator.pushNamed(context, SearchTypingPage.SearchPageRoute);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: WebsafeSvg.asset("Assets.ic_shopping_cart"),
          ),
        ),
        Obx(() {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            // child: InkWell(
            //     child: AppController.controller.isUserClientLoggedIn.value
            //         ? Obx(() {
            //             if (!AppController
            //                 .controller.userProfileLiveData.value.isNull) {
            //               switch (AppController
            //                   .controller.userProfileLiveData.value.status) {
            //                 case Status.LOADING:
            //                   return buildAvatarShimmer();
            //                   break;
            //                 //carousel_slider
            //                 case Status.COMPLETED:
            //                   return Container(
            //                     child: CircleAvatar(
            //                       //foregroundColor: Colors.black,
            //                      // backgroundColor: Colors.black12,
            //                       child: Container(
            //                         child: Center(
            //                           child: Text(
            //                             AppController
            //                                     .controller
            //                                     .userProfileLiveData
            //                                     .value
            //                                     .data
            //                                     .result
            //                                     .name[0]
            //                                     .toUpperCase()
            //                                     .isNotEmpty
            //                                 ? AppController
            //                                     .controller
            //                                     .userProfileLiveData
            //                                     .value
            //                                     .data
            //                                     .result
            //                                     .name[0]
            //                                     .toUpperCase()
            //                                 : "",
            //                             style: TextStyle(
            //                                 fontWeight: FontWeight.w700,
            //                                 // fontSize: 22,
            //                                 color: Colors.white,
            //                                 shadows: AppTheme.textShadow),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   );
            //                 case Status.ERROR:
            //                   return GestureDetector(
            //                     child: Padding(
            //                       padding: const EdgeInsets.all(8.0),
            //                       child: Icon(Icons.refresh),
            //                     ),
            //                     onTap: () =>
            //                         {AppController.controller.getUserProfile()},
            //                   );
            //               }
            //             }
            //             return buildAvatarShimmer();
            //           })
            //         : Icon(Icons.account_circle),
            //     onTap: () {
            //       AppController.controller.isUserClientLoggedIn.value
            //           ? Get.toNamed(
            //               ProfileMenuOverlayPage.profileMenuOverlayPageRoute)
            //           : Get.toNamed(LoginPage.loginPageRoute);
            //     }),
          );
        }),
      ],
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);

  // Widget buildAvatarShimmer() {
  //   return Container(
  //     child: Shimmer.fromColors(
  //       child: CircleAvatar(
  //         foregroundColor: Colors.black,
  //         //backgroundColor: Colors.black,
  //         child: Container(
  //           child: Center(
  //             child: Text(
  //               "M",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.w700,
  //                   // fontSize: 22,
  //                   color: Colors.white,
  //                   shadows: AppTheme.textShadow),
  //             ),
  //           ),
  //         ),
  //       ),
  //       baseColor: Colors.grey[300],
  //       highlightColor: Colors.grey[100],
  //     ),
  //   );
  // }
}
