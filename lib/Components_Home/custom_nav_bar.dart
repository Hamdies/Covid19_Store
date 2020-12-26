import 'dart:ui';
import 'package:covid19_shop/Constants/const.dart';
import 'package:covid19_shop/Components_Home/nav_bar_icon.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int bottomNavItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.02,
      left: 0,
      right: 0,
      child: Container(
        height: size.height * 0.07,
        margin: EdgeInsets.symmetric(horizontal: appPadding * 2),
        decoration: BoxDecoration(
          color: KWhiteColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 15.0, sigmaX: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarIcon(
                  onPressed: () {
                    setState(() {
                      bottomNavItemIndex = 0;
                    });
                  },
                  icon: Icons.home_outlined,
                  isSelected: bottomNavItemIndex == 0 ? true : false,
                ),
                NavBarIcon(
                  onPressed: () {
                    setState(() {
                      bottomNavItemIndex = 1;
                    });
                  },
                  icon: Icons.favorite_border,
                  isSelected: bottomNavItemIndex == 1 ? true : false,
                ),
                NavBarIcon(
                  onPressed: () {
                    setState(() {
                      bottomNavItemIndex = 2;
                    });
                  },
                  icon: Icons.search,
                  isSelected: bottomNavItemIndex == 2 ? true : false,
                ),
                NavBarIcon(
                  onPressed: () {
                    setState(() {
                      bottomNavItemIndex = 3;
                    });
                  },
                  icon: Icons.shopping_bag_outlined,
                  isSelected: bottomNavItemIndex == 3 ? true : false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
