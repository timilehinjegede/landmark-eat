import 'package:flutter/material.dart';
import 'package:landmarkeat/model/food.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/styles.dart';

class FoodItemGrid extends StatelessWidget {

  final int index;

  FoodItemGrid(this.index);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 230,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: Food.getAllFood().elementAt(index).imgPath,
                    fit: BoxFit.cover
                )
            ),
          ),
          YMargin(8),
          Text(
            Food.getAllFood().elementAt(index).name,
            style: tStyle(color: kPrimaryColor, size: 16, weight: 7),
          ),
          YMargin(5),
          Text(
            'NGN ${Food.getAllFood().elementAt(index).price}',
            style: tStyle(color: kFaded, size: 14, weight: 2),
          ),
        ],
      ),
    );
  }
}
