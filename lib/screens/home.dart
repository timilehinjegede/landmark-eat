import 'package:flutter/material.dart';
import 'package:landmarkeat/components/foodgriditem.dart';
import 'package:landmarkeat/components/foodslide.dart';
import 'package:landmarkeat/model/food.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropDownValue = 'Select prefered restaurant';
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropDownValue,
                            icon: Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            underline: Container(
                              height: 0,
                              color: Colors.transparent,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropDownValue = newValue;
                              });
                            },
                            items: <String>[
                              'Select prefered restaurant',
                              'Spur Restaurant',
                              'Chop now now',
                              'Thor Restaurant',
                              'Chop before before'
                            ].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
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
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.71,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return FoodItemGrid(index + 2);
                },
                childCount: Food.getAllFood().length - 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
