import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/images.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class HistoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: screenWidth(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: screenWidth(context) * 0.27,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: chips1,
                    fit: BoxFit.cover
                  )
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Suite Beach View',
                          style: tStyle(color: kPrimaryColor, size: 18, weight: 6),
                        ),
                        YMargin(3),
                        Text(
                            'The Landmark Hotel',
                          style: tStyle(color: kFaded, size: 14, weight: 4),
                        ),
                        YMargin(8),
                        Text(
                            'NGN 105,000',
                          style: tStyle(color: kPrimaryColor, size: 14, weight: 5),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                            '3',
                          style: tStyle(color: Colors.white, weight: 6, size: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        YMargin(20),
      ],
    );
  }
}
