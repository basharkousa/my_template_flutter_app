// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class ProductsTemplateWidget extends StatelessWidget {
//   final Rx<ApiResponse<ProductTemplateResponse>> snapshot;
//   final Function onRetryPressed;
//   ProductsTemplateWidget({@required this.snapshot,@required this.onRetryPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx((){
//       if (!snapshot.value.isNull) {
//         switch (snapshot.value.status) {
//           case Status.LOADING:
//             return LoadingShimmerProductWidget();
//             break;
//         //carousel_slider
//           case Status.COMPLETED:
//             if(snapshot.value.data.product_Template.isEmpty)
//               return Center(child: Container(
//                 margin: EdgeInsets.all(30),
//                 child: Text(Strings.noResult.tr),),);
//             return buildContent();
//             break;
//           case Status.ERROR:
//             return ErrorsWidget(
//               onRetryPressed: () => {
//                 onRetryPressed()
//               },
//             );
//             break;
//         }
//       }
//       return LoadingShimmerProductWidget();
//     });
//   }
//
//   void moveToProductDetailsPage(ProductTemplate product) {
//     Get.toNamed(ProductDetailsPage.productDetailsRoute,arguments: product);
//   }
//
//   buildContent() {
//     return Container(
//       margin: EdgeInsetsDirectional.only(top: 4.0, start: 7, end: 7),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: snapshot.value.data.product_Template.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 1.8 / 3,
//         ),
//         itemBuilder: (context, index) {
//           return CardProductTemplate(
//             product: snapshot.value.data.product_Template[index],
//             onClick: (product){
//               print(product.toString());
//               moveToProductDetailsPage(product);
//             },
//           );
//         },
//       ),
//     );
//   }
//
//
// }
//
// class LoadingShimmerProductWidget extends StatelessWidget {
//   final String loadingMessage;
//
//   const LoadingShimmerProductWidget({Key key, this.loadingMessage})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300],
//       highlightColor: Colors.grey[100],
//       child: Container(
//         margin: EdgeInsetsDirectional.only(top: 4.0, start: 7, end: 7),
//         child: GridView.builder(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: 4,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 1.9 / 3,
//           ),
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//               child: GestureDetector(
//                 onTap: () {},
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     Expanded(
//                       child: ClipRRect(
//                           child: Stack(
//                             fit: StackFit.expand,
//                             children: <Widget>[
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(8.0),
//                                 child: SizedBox(
//                                   child: Container(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )),
//                     ),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.only(start: 4.0),
//                       child: Column(
//                         children: <Widget>[
//                           Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsetsDirectional.only(
//                                       top: 6.0, start: 0.0, end: 5.0),
//                                   child: Container(
//                                     color: const Color(0xff000000),
//                                     child: Text(
//                                       "product.name",
//                                       overflow: TextOverflow.ellipsis,
//                                       //maxLines: 2,
//                                       style: TextStyle(
//                                         color: const Color(0xff000000),
//                                         fontSize: 14.0,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsetsDirectional.only(
//                                     top: 6.0, end: 4.0),
//                                 child: Container(
//                                   color: const Color(0xff000000),
//                                   child: Text(
//                                     "product.cost",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.end,
//                                     style: TextStyle(
//                                         color: const Color(0xff000000),
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 14.0),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsetsDirectional.only(top: 4.0),
//                             child: Align(
//                               child: Container(
//                                 color: const Color(0xff000000),
//                                 child: Text(
//                                   "product.description",
//                                   overflow: TextOverflow.ellipsis,
//                                   maxLines: 2,
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: const Color(0xff333333),
//                                   ),
//                                   textAlign: TextAlign.start,
//                                 ),
//                               ),
//                               alignment: AlignmentDirectional.centerStart,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
