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
                  return HistoryItem();
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
