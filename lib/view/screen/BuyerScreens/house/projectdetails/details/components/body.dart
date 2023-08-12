// import 'package:flutter/material.dart';
// import 'package:flutter_course_mytest/data/model/housesmodel.dart';
// import 'color_dots.dart';
// import 'product_description.dart';
// import 'top_rounded_container.dart';
// import 'product_images.dart';

// class Body extends StatelessWidget {
//   final HouseModel product;

//   const Body({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ProductImages(product: product),
//         TopRoundedContainer(
//           color: Colors.white,
//           child: Column(
//             children: [
//               ProductDescription(
//                 product: product,
//                 pressOnSeeMore: () {},
//               ),
//               TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: 15,
//                           right:15,
//                           bottom: 40,
//                           top: 15,
//                         ),
//                         child: ElevatedButton(
//                           child: Text("Add To Cart"),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
