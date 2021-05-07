import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Screens/Details/componants/product_description.dart';
import 'package:furniture_app/models/Product.dart';

import '../../constants.dart';
import '../../size_config.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({this.product});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            children: [
              ProductDescription(
                product: product,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
