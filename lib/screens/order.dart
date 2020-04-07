import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/images.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 25.0, 20.0),
            child: Column(
              children: <Widget>[
                //heading goes here
                Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kFaded,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    XMargin(20),
                    Text(
                      'Your Orders',
                      style: tStyle(size: 28, color: kPrimaryColor, weight: 7),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),

                YMargin(60),

                // cart item 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: yam, fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      '2 x',
                      style: tStyle(size: 16, color: kFaded, weight: 7),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Riding Skis',
                          style:
                              tStyle(size: 18, color: kPrimaryColor, weight: 7),
                        ),
                        YMargin(5),
                        Text(
                          'NGN 3,500',
                          style: tStyle(size: 15, color: kFaded, weight: 4),
                        ),
                      ],
                    )
                  ],
                ),

                YMargin(20),

                // cart item 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: amala, fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      '2 x',
                      style: tStyle(size: 16, color: kFaded, weight: 7),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Riding Skis',
                          style:
                              tStyle(size: 18, color: kPrimaryColor, weight: 7),
                        ),
                        YMargin(5),
                        Text(
                          'NGN 3,500',
                          style: tStyle(size: 15, color: kFaded, weight: 4),
                        ),
                      ],
                    )
                  ],
                ),

                YMargin(20),

                // cart item 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: jollof, fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      '2 x',
                      style: tStyle(size: 16, color: kFaded, weight: 7),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Riding Skis',
                          style:
                              tStyle(size: 18, color: kPrimaryColor, weight: 7),
                        ),
                        YMargin(5),
                        Text(
                          'NGN 3,500',
                          style: tStyle(size: 15, color: kFaded, weight: 4),
                        ),
                      ],
                    )
                  ],
                ),

                YMargin(20),

                Divider(
                  color: kPrimaryColor,
                ),

                YMargin(15),

                // total item in cart is here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: tStyle(color: kPrimaryColor, size: 18, weight: 6),
                    ),
                    Text(
                      'NGN 20,000',
                      style: tStyle(color: kPrimaryColor, size: 25, weight: 7),
                    )
                  ],
                ),

                YMargin(15),

                Divider(
                  color: kPrimaryColor,
                  thickness: 1,
                ),

                YMargin(35),

                // proceed to checkout container
                Container(
                  height: 65,
                  width: screenWidth(context),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              color: kOrange,
                            ),
                            child: Center(
                              child: Text(
                                'Proceed to checkout',
                                style: tStyle(
                                  size: 16,
                                  color: kPrimaryColor,
                                  weight: 6,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/ticket');
                          },
                        ),
                      ),

                      // total price container
                      Container(
                        width: screenWidth(context) * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'NGN 20,000',
                            style: tStyle(
                              size: 16,
                              color: Colors.white,
                              weight: 6,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
