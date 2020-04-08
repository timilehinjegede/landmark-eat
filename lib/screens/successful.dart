import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class SuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 200,
              width: 200,
              image: AssetImage('images/done.png'),
            ),
            Text(
              'Successful',
              style: tStyle(size: 22, color: kPrimaryColor, weight: 7),
            ),
            YMargin(10),
            Text(
              'At vero eos censes aut voluptates\nrepudiandae sint et voluptates.',
              style: tStyle(size: 14, color: kFaded, weight: 5),
            ),
            YMargin(20),
            Container(
              height: 60,
              width: screenWidth(context),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(
                  'See your order',
                  style: tStyle(size: 15, color: Colors.white, weight: 5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
