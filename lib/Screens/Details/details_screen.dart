import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Screens/Details/componants/product_description.dart';
import 'package:furniture_app/Screens/Details/componants/product_details.dart';
import 'package:furniture_app/models/Product.dart';

import '../../constants.dart';
import '../../size_config.dart';

//
// class DetailsScreen extends StatefulWidget {
//   final Product product;
//
//   const DetailsScreen({this.product});
//
//   @override
//   _DetailsScreenState createState() => _DetailsScreenState();
// }
//
// class _DetailsScreenState extends State<DetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffEEEFF2),
//       appBar: AppBar(
//         leading: IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/arrow-long-left.svg",
//             // height: SizeConfig.defaultSize * 2,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(""),
//         actions: [
//           IconButton(
//               icon: SvgPicture.asset(
//                 "assets/icons/bag.svg",
//                 color: kTextColor,
//                 // height: SizeConfig.defaultSize * 2.4,
//               ),
//               onPressed: () {}),
//           SizedBox(
//             width: SizeConfig.defaultSize,
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           width: double.infinity,
//           height: SizeConfig.orientation == Orientation.landscape
//               ? SizeConfig.screenWidth
//               : SizeConfig.screenHeight - AppBar().preferredSize.height,
//           child: Stack(
//             children: [
//               ProductDetails(product: product),
//               Positioned(
//                 top: SizeConfig.defaultSize * 35.5,
//                 left: 0,
//                 right: 0,
//                 child: ProductDescription(
//                   product: product,
//                 ),
//               ),
//               Positioned(
//                 child: Container(
//                   //color: Colors.orange,
//                   height: 280,
//                   width: 280,
//                   child: Hero(
//                     tag: product.id,
//                     child: FadeInImage.assetNetwork(
//                       placeholder: "assets/spinner.gif",
//                       image: product.image,
//                     ),
//                   ),
//                 ),
//
//                 top: SizeConfig.defaultSize * 11.5,
//                 right: -SizeConfig.defaultSize * 7.5,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEFF2),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/arrow-long-left.svg",
            // height: SizeConfig.defaultSize * 2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(""),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/bag.svg",
                color: kTextColor,
                // height: SizeConfig.defaultSize * 2.4,
              ),
              onPressed: () {}),
          SizedBox(
            width: SizeConfig.defaultSize,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: SizeConfig.orientation == Orientation.landscape
              ? SizeConfig.screenWidth
              : SizeConfig.screenHeight - AppBar().preferredSize.height,
          child: Stack(
            children: [
              ProductDetails(product: product),
              Positioned(
                top: SizeConfig.defaultSize * 35.5,
                left: 0,
                right: 0,
                child: ProductDescription(
                  product: product,
                ),
              ),
              Positioned(
                top: SizeConfig.defaultSize * 9.5,
                right: -SizeConfig.defaultSize * 7.5,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    height: SizeConfig.defaultSize * 37.8, //378
                    width: SizeConfig.defaultSize * 36.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
