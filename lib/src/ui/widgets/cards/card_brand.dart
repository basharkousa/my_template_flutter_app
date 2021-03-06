// import 'package:flutter/material.dart';
//
//
// class CardBrand extends StatelessWidget {
//
// //  final BrandModel brand;
//
//   CardBrand({this.brand});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => {print("Brand")},
//       child: Container(
//         width: 84.0,
//         height: 64.0,
//         child: Column(
//           children: <Widget>[
//             Container(
//               width: 64.0,
//               height: 64.0,
//               margin: EdgeInsets.all(8.0),
//               child: CircleAvatar(
// //                backgroundColor: AppColors.lightGrey,
//                 child: CachedNetworkImage(
//                   imageUrl: brand.image_url ?? "",
//                   errorWidget: (context, url, error) => Icon(
//                     Icons.error,
//                     color: AppColors.lightGray2,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsetsDirectional.only(start: 4.0, end: 4.0),
//               child: Text(
//                 brand.name,
//                 style: TextStyle(
//                   fontSize: 11,
//                   color: const Color(0xff484848),
//                   fontWeight: FontWeight.w300,
//                 ),
//                 textAlign: TextAlign.center,
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
