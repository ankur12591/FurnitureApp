import 'package:flutter/material.dart';
import 'package:furniture_app/Components/title_text.dart';
import 'package:furniture_app/models/Categories.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/size_config.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ProductCard({this.product,this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2), //20
        width: SizeConfig.defaultSize * 14.5, //145
       // height: SizeConfig.defaultSize * 24.5,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
         // color: Colors.orange,
          child: AspectRatio(
            aspectRatio: 0.580,
            child: Container(
             // color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    //color: Colors.orange,
                    child: AspectRatio(
                      aspectRatio: 1.15,
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/spinner.gif",
                        image: product.image,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      //color: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
                      child: TitleText(title: product.title,  ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.defaultSize),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.6),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
