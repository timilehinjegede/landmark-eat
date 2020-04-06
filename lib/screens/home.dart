import 'package:flutter/material.dart';
import 'package:landmarkeat/components/foodgriditem.dart';
import 'package:landmarkeat/components/foodslide.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // navigate back icon
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 70.0, 15.0, 0.0),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kFaded,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ),

                  YMargin(15),

                  // heading
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'What would you\nlike to Eat?',
                          style:
                              tStyle(color: kPrimaryColor, size: 30, weight: 7),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: kFaded,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  YMargin(20),

                  //drop down button goes here
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      height: 60,
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Select prefered restaurant',
                            style: tStyle(
                                size: 15, color: kPrimaryColor, weight: 6),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: kPrimaryColor,
                              size: 28,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  YMargin(20),

                  // food slide goes here
                  // wrapped the food slide widget inside a gesture detector so everything happens to be clickable
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/restaurant');
                    },
                    child: FoodSlide(),
                  ),

                  YMargin(20),
                ],
              ),
            ],
          ),
        ),

        // grid view goes here
        SliverPadding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.71,
            children: <Widget>[
              // food item components
              FoodItemGrid(2),
              FoodItemGrid(3),
              FoodItemGrid(4),
              FoodItemGrid(5),
              FoodItemGrid(2),
              FoodItemGrid(3),
            ],
          ),
        ),
      ],
    );
  }
}
