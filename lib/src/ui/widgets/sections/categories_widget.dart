// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:my_template_flutter_app/src/data/models/api_response.dart';
//
// class CategoriesWidget extends StatelessWidget {
//   final Rx<ApiResponse<CategoriesRespone>> snapshot;
//   final Function() onBtnRetry;
//   final Color backgroundColor;
//
//   CategoriesWidget({this.snapshot, this.onBtnRetry, this.backgroundColor});
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       if (!snapshot.value.isNull) {
//         switch (snapshot.value.status) {
//           case Status.LOADING:
//             return LoadingShimmerCategoryWidget();
//           case Status.COMPLETED:
//             return buildContent();
//           case Status.ERROR:
//             return ErrorsWidget(
//               //errorMessage: snapshot.data.message,
//               onRetryPressed: () => onBtnRetry(),
//             );
//         }
//       }
//       return LoadingShimmerCategoryWidget();
//     });
//   }
//
//   Widget buildContent() {
//     return Container(
//         color: backgroundColor == null ? AppColors.lightGrey : backgroundColor,
//         height: Dimens.card_category_height,
//         margin: EdgeInsetsDirectional.only(top: 10.0, bottom: 10.0),
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           shrinkWrap: true,
//           itemCount: snapshot.value.data.result.length,
//           itemBuilder: (BuildContext context, int index) {
//             return CardCategory(
//               category: snapshot.value.data.result[index],
//               onClick: (category) {
//                 print(category.toString());
//                 //moveToProductDetailsPage(product);
//                 Get.toNamed(CategoryDetailsPage.categoryDetailsRoute,
//                     arguments: category);
//               },
//             );
//           },
//         ));
//   }
// }
//
// class LoadingShimmerCategoryWidget extends StatelessWidget {
//   final String loadingMessage;
//
//   const LoadingShimmerCategoryWidget({Key key, this.loadingMessage})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Dimens.card_category_height,
//       margin: EdgeInsetsDirectional.only(top: 10.0, bottom: 10.0),
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey[300],
//         highlightColor: Colors.grey[100],
//         child: ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           shrinkWrap: true,
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               margin: EdgeInsetsDirectional.only(
//                   start: Dimens.main_start_margin, top: 10, bottom: 10),
//               height: Dimens.card_category_height,
//               width: Dimens.card_category_width,
//               decoration: BoxDecoration(
//                 color: Colors.transparent,
//                 border: Border.all(
//                   width: 1.00,
//                   color: Color(0xff999999),
//                 ),
//                 borderRadius: BorderRadius.circular(9.00),
//               ),
//               child: Column(
//                 //crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Expanded(
//                     child: Center(
//                       child: Container(
//                         width: 200,
//                         height: 200,
//                         color: AppColors.lightGrey,
//                         margin: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(6.0),
//                         child: Container(
//                             height: 8, color: const Color(0xff000000)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
