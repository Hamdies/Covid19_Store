import 'package:covid19_shop/Constants/const.dart';
import 'package:covid19_shop/Data/product_data.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Wrap(
      spacing: appPadding,
      children: List<Widget>.generate(sizeOfVacc.length, (index) {
        return index == 0
            ? Container(
                width: size.width * 0.2,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: KWhiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    sizeOfVacc[index],
                    style: TextStyle(
                      color: KBackGroundColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            : Container(
                width: size.width * 0.2,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: KWhiteColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    sizeOfVacc[index],
                    style: TextStyle(
                      color: KWhiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
      }),
    );
  }
}
