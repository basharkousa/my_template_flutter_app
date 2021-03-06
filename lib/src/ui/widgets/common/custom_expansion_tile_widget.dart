// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:websafe_svg/websafe_svg.dart';
//
// class CustomExpansionTile extends StatelessWidget {
//   final String title;
//   final Widget body;
//   final RxBool isExpanded = true.obs;
//   final Widget openExpandIcon;
//   final Widget closeExpandIcon;
//   final Function(bool value) onIsExpanded;
//
//   CustomExpansionTile(
//       {this.title,
//       this.body,
//       bool isExpanded,
//       this.openExpandIcon,
//       this.closeExpandIcon,
//       this.onIsExpanded}) {
//     this.isExpanded.value = isExpanded;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
//     return GetBuilder(initState: (_) {
//       //         this.isExpanded.value = isExpanded ?? false;
//     }, builder: (_) {
//       return Obx(() {
//         return Container(
//           margin: EdgeInsetsDirectional.only(start: 0, top: 8.0),
//           child: Theme(
//             data: theme,
//             child: ExpansionTile(
//               title: Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: const Color(0xde000000),
//                   fontWeight: FontWeight.w500,
//                   height: 1.4285714285714286,
//                 ),
//                 textAlign: TextAlign.start,
//               ),
//               //trailing:Icon(Icons.arrow_downward),
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsetsDirectional.only(
//                       start: Dimens.main_start_margin,
//                       bottom: 8.0,
//                       end: Dimens.main_start_margin),
//                   child: body,
//                 )
//               ],
//               trailing: isExpanded.value
//                   ? closeExpandIcon ??
//                       WebsafeSvg.asset(
//                         Assets.ic_close_expantion,
//                         width: 14,
//                       )
//                   : openExpandIcon ??
//                       WebsafeSvg.asset(
//                         Assets.ic_open_expantion,
//                         width: 14,
//                       ),
//               onExpansionChanged: (bool expanding) {
//                 print("onExpansionChanged $expanding");
//                 this.isExpanded.value = expanding;
//                 print("isExpanded.value ${this.isExpanded.value}");
//                 if (onIsExpanded != null) onIsExpanded(expanding);
//               },
//               initiallyExpanded: isExpanded.value,
//             ),
//           ),
//         );
//       });
//     });
//   }
// }
