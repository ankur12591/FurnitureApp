import 'package:flutter/material.dart';
import 'package:furniture_app/Components/title_text.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  final Product product;

  const ProductDescription({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical:SizeConfig.defaultSize * 2), //20
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 1.5), //20
            child: TitleText(
              title: product.subTitle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 1.5), //20
            child: Text(
              product.description,
            ),
          ),
          Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 1.5), //20
            width: SizeConfig.screenWidth,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: kPrimaryColor,
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 1.8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
