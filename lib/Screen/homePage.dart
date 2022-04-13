import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import 'Widget/big_text.dart';
import 'Widget/small_text.dart';
import 'homePageBody.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            margin:  EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Tunisie", color: Colors.tealAccent,),
                    Row(
                      children: [
                        SmallText(text: "Kairouan", color: Colors.grey,),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )


                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: HomePageBody(),
          )),
        ],
      ),
    );
  }
}
