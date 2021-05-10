import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  const ProductDetails({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //height: SizeConfig.defaultSize * 37.5, //375
      width: 140,
      //color: Colors.green,
      //color: Color(0xffEEEFF2),
      //padding: const EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
      //20

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            //  "Aristocratic Hand Bag",
            product.category,
            style:
                TextStyle(color: kTextColor.withOpacity(0.6), fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              product.title,
              style: TextStyle(
                fontSize: SizeConfig.defaultSize * 2.4, //24
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
                height: 1.4,
              ),
            ),
          ),
          // SizedBox(
          //   height: 100,
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Form\n",
                      style: TextStyle(color: kTextColor.withOpacity(0.6))),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Text("Available Colors",
              style: TextStyle(color: kTextColor.withOpacity(0.6))),
          Row(
            children: <Widget>[
              buildColorBox(
                SizeConfig.defaultSize,
                color: Color(0xFF7BA275),
                isActive: true,
              ),
              buildColorBox(
                SizeConfig.defaultSize,
                color: Color(0xFFD7D7D7),
              ),
              buildColorBox(
                SizeConfig.defaultSize,
                color: kTextColor,
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // For  fixed value we can use cont for better performance
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:furniture_app/models/Product.dart';
//
// import '../../../constants.dart';
// import '../../../size_config.dart';
//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:furniture_app/models/Product.dart';
//
// import '../../../constants.dart';
// import '../../../size_config.dart';
//
// class ProductDetails extends StatelessWidget {
//   const ProductDetails({
//     Key key,
//     @required this.product,
//   }) : super(key: key);
//
//   final Product product;
//
//   @override
//   Widget build(BuildContext context) {
//     double defaultSize = SizeConfig.defaultSize;
//     TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
//       height: defaultSize * 37.5, //375
//       width: defaultSize *
//           (SizeConfig.orientation == Orientation.landscape ? 35 : 15), //150
//       color: Colors.black45,
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(product.category.toUpperCase(), style: lightTextStyle),
//             SizedBox(height: defaultSize),
//             Text(
//               product.title,
//               style: TextStyle(
//                 fontSize: defaultSize * 2.4, //24
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: -0.8,
//                 height: 1.4,
//               ),
//             ),
//             SizedBox(height: defaultSize * 2),
//             Text("Form", style: lightTextStyle),
//             Text(
//               "\$${product.price}",
//               style: TextStyle(
//                 fontSize: defaultSize * 1.6, //16
//                 fontWeight: FontWeight.bold,
//                 height: 1.6,
//               ),
//             ),
//             SizedBox(height: defaultSize * 2), //20
//             Text("Available Colors", style: lightTextStyle),
//             Row(
//               children: <Widget>[
//                 buildColorBox(
//                   defaultSize,
//                   color: Color(0xFF7BA275),
//                   isActive: true,
//                 ),
//                 buildColorBox(
//                   defaultSize,
//                   color: Color(0xFFD7D7D7),
//                 ),
//                 buildColorBox(
//                   defaultSize,
//                   color: kTextColor,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container buildColorBox(double defaultSize,
//       {Color color, bool isActive = false}) {
//     return Container(
//       margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
//       // For  fixed value we can use cont for better performance
//       padding: const EdgeInsets.all(5),
//       height: defaultSize * 2.4,
//       width: defaultSize * 2.4,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
//     );
//   }
// }
