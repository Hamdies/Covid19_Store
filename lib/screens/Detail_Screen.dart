import 'package:covid19_shop/Constants/const.dart';
import 'package:covid19_shop/Models/product.dart';
import 'package:covid19_shop/Components_Details/add_bucket_button.dart';
import 'package:covid19_shop/Components_Details/product_details.dart';
import 'package:covid19_shop/Components_Details/product_image.dart';
import 'package:covid19_shop/Components_Details/quantity_selector.dart';
import 'package:covid19_shop/Components_Details/size_selector.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackGroundColor,
      body: Padding(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //it contain product image and background container
            ProductImage(
              widget.product.imageUrl,
              widget.product.isFav,
            ),
            ProductDetails(
              widget.product,
            ),
            SizeSelector(),
            QuantitySelector(),
            AddBucketButton(),
          ],
        ),
      ),
    );
  }
}
