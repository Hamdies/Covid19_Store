import 'package:covid19_shop/Components_Home/SanitizationProducts.dart';
import 'package:covid19_shop/Components_Home/custom_nav_bar.dart';
import 'package:covid19_shop/Components_Home/products.dart';
import 'package:flutter/material.dart';
import 'package:covid19_shop/Constants/const.dart';
import 'package:covid19_shop/Models/product.dart';
import 'package:covid19_shop/Models/Sanitization_product.dart';
import 'package:covid19_shop/Components_Home//selected_category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Responsive Screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: KBackGroundColor,
      appBar: AppBar(
        backgroundColor: KBackGroundColor,
        elevation: 0.0,
        title: Text(
          'Home',
          style: TextStyle(fontFamily: 'Nexa', fontSize: 24),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: appPadding),
          width: size.width * 0.1,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/appbar_icon.png'),
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: appPadding),
            width: size.width * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/user.jpg'),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            //will help to give scroll view to small sized screens
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SelectCategory(),
                  Products(),
                  SanitizationProducts(),
                ],
              ),
            ),
            CustomNavBar(),
            //thats the end of first lets jump to second screen
          ],
        ),
      ),
    );
  }
}
