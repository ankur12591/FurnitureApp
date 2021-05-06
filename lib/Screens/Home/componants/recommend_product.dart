import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/Details/details_screen.dart';
import 'package:furniture_app/Screens/Home/componants/product_card.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/size_config.dart';

class RecommandProducts extends StatelessWidget {
  final List<Product> products;

  const RecommandProducts({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.defaultSize * 2), //20
      //color: Colors.orange,

      child: GridView.builder(
        // We just turn off grid view scrolling
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // just for demo
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.620,
        ),
        itemBuilder: (context, index) => ProductCard(
            product: products[index],
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                        //product: products[index],
                        ),
                  ));
            }),
      ),
    );
  }
}
