import 'package:flutter/material.dart';
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
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kFaded,
                  size: 20,
                ),
              ),
              YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'What would you\nlike to Eat?',
                    style: tStyle(color: kPrimaryColor, size: 30, weight: 7),
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
              YMargin(20),

              //drop down button goes here

              Container(
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
                      style: tStyle(size: 15, color: kPrimaryColor, weight: 6),
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
              YMargin(20),

              // food slide goes he
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/restaurant');
                },
                child: FoodSlide(),
              ),

              //food grid goes here
            ],
          ),
        ),
      ],
    );
  }
}
