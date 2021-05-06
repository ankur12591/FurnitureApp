import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: SizeConfig.defaultSize * 2.2,
                fontWeight: FontWeight.bold),
          ),
        ),
        //Text("data", textAlign: TextAlign.center,)
      ],
    );
  }
}
