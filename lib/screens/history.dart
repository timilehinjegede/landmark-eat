import 'package:flutter/material.dart';
import 'package:landmarkeat/components/historyitem.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/images.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 70.0, 25.0, 20.0),
                  child: Column(
                    children: <Widget>[
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
                            'History',
                            style: tStyle(
                                size: 28, color: kPrimaryColor, weight: 7),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),

                      YMargin(20),

                      //history list
                    ],
                  ),
                ),
              ],
            ),
          ),

          // the list of orders
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
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
                                        image: DecorationImage(
                                            image: suite, fit: BoxFit.cover),
                                      ),
                                      width: 400,
                                      height: 180,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Suite Beach\nView Lake',
                                            style: tStyle(
                                                size: 22,
                                                color: kPrimaryColor,
                                                weight: 7),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            child: Center(
                                              child: Text(
                                                '3',
                                                style: tStyle(
                                                    size: 20,
                                                    weight: 6,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          )
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        style: tStyle(
                                            size: 14, color: kFaded, weight: 6),
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
                                        style: tStyle(
                                            size: 16,
                                            color: kPrimaryColor,
                                            weight: 6),
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
                    },
                    child: HistoryItem(),
                  );
                },
                childCount: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
