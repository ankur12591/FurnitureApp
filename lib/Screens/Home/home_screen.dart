import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Components/title_text.dart';
import 'package:furniture_app/Services/fetchCategories.dart';
import 'package:furniture_app/Services/fetchProducts.dart';
import 'package:furniture_app/size_config.dart';

import '../../constants.dart';
import 'componants/categories.dart';
import 'componants/recommend_product.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize * 2,
          ),
        ),
        title: Text(""),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/scan.svg",
                color: kTextColor,
                height: SizeConfig.defaultSize * 2.4,
              ),
              onPressed: () {}),
          Center(
            child: Text(
              "Scan",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: SizeConfig.defaultSize,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: const EdgeInsets.all(SizeConfig.defaultSize * 2),
         // padding: EdgeInsets.all(SizeConfig.defaultSize * 2), //20
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * 2), //20
                child: TitleText(
                  title: "Browse by Categories",
                ),
              ),
              FutureBuilder(
                future: fetchCategories(),
                builder: (context, snapshot) => snapshot.hasData
                    ? Categories(categories: snapshot.data)
                    : Center(child: Image.asset("assets/ripple.gif")),
              ),
              Divider(height: 5),
              Padding(
               // padding: EdgeInsets.symmetric(vertical :SizeConfig.defaultSize * 2), //20
                padding: EdgeInsets.all(SizeConfig.defaultSize * 2), //20
                child: TitleText(title: "Recommends For You"),
              ),
              // TitleText(title: "Recommends For You",),
              FutureBuilder(
                future: fetchProducts(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? RecommandProducts(products: snapshot.data)
                      : Center(child: Image.asset('assets/ripple.gif'));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
