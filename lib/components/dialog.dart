import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/images.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

Dialog myDialog() {
  BuildContext context;

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          title: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
          content: Container(
            height: 480,
            width: screenWidth(context) * 0.3,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: suite, fit: BoxFit.cover),
                  ),
                  width: 400,
                  height: 180,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Suite Beach\nView Lake',
                        style:
                            tStyle(size: 22, color: kPrimaryColor, weight: 7),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Center(
                          child: Text(
                            '3',
                            style: tStyle(
                                size: 20, weight: 6, color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                YMargin(8),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    'The Landmark Hotel',
                    style: tStyle(size: 14, color: kFaded, weight: 6),
                  ),
                ),
                YMargin(15),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    'NGN 105, 000',
                    style: tStyle(size: 16, color: kPrimaryColor, weight: 6),
                  ),
                ),
                YMargin(20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Image(
                    height: 120,
                    width: 120,
                    image: qrblack,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
