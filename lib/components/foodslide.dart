import 'package:flutter/material.dart';
import 'package:landmarkeat/model/food.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/styles.dart';

class FoodSlide extends StatefulWidget {
  @override
  _FoodSlideState createState() => _FoodSlideState();
}

class _FoodSlideState extends State<FoodSlide> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 230,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
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
                          image: Food.getAllFood().elementAt(0).imgPath,
                          fit: BoxFit.cover
                      )
                  ),
                ),
                YMargin(8),
                Text(
                  Food.getAllFood().elementAt(0).name,
                  style: tStyle(color: kPrimaryColor, size: 16, weight: 6),
                ),
                YMargin(5),
                Text(
                  'NGN ${Food.getAllFood().elementAt(0).price}',
                  style: tStyle(color: kFaded, size: 14, weight: 2),
                ),
              ],
            ),
          ),
          XMargin(20),
          Container(
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
                          image: Food.getAllFood().elementAt(1).imgPath,
                          fit: BoxFit.cover
                      )
                  ),
                ),
                YMargin(8),
                Text(
                  Food.getAllFood().elementAt(1).name,
                  style: tStyle(color: kPrimaryColor, size: 16, weight: 6),
                ),
                YMargin(5),
                Text(
                  'NGN ${Food.getAllFood().elementAt(1).price}',
                  style: tStyle(color: kFaded, size: 14, weight: 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
