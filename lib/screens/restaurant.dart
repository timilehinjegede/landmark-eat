import 'package:flutter/material.dart';
import 'package:landmarkeat/components/foodgriditem.dart';
import 'package:landmarkeat/model/food.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // app bar with image
          const SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 250.0,
            title: Text(
              'Spur Restaurant',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('images/spur.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // text goes here
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 15.0),
                child: Text(
                  'Where would you\nlike to eat?',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              YMargin(25),
            ]),
          ),

          // padding to the sliver grid
          SliverPadding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.71,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {

                      // bottom sheet goes here
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18))),
                        context: context,
                        builder: (context) => ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.fromLTRB(15, 25, 15, 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: Food.getAllFood()
                                                .elementAt(2)
                                                .imgPath,
                                            fit: BoxFit.cover)),
                                  ),
                                  YMargin(8),
                                  Text(
                                    Food.getAllFood().elementAt(2).name,
                                    style: tStyle(
                                        color: kPrimaryColor,
                                        size: 22,
                                        weight: 6),
                                  ),
                                  YMargin(7),
                                  Text(
                                    'NGN ${Food.getAllFood().elementAt(2).price}',
                                    style: tStyle(
                                        color: kFaded, size: 20, weight: 2),
                                  ),
                                  YMargin(8),
                                  Text(
                                    'Ut placet, inquam tum dicere exorsus est et dolorum fuga et negent satis esse albam, dulce mel quorum facta quem modo dixi, constituto, ut aliquid ex ea quid iudicat.',
                                    style: tStyle(
                                        color: kPrimaryColor,
                                        size: 12,
                                        weight: 2),
                                  ),
                                  Divider(
                                    color: kPrimaryColor,
                                  ),
                                  Container(
                                    height: 60,
                                    width: screenWidth(context),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(
                                            Icons.add,
                                            color: kPrimaryColor,
                                            size: 25,
                                          ),
                                          onPressed: () {},
                                        ),
                                        XMargin(20),
                                        Text(
                                          '2',
                                          style: tStyle(
                                              size: 30,
                                              color: kFaded,
                                              weight: 6),
                                        ),
                                        XMargin(20),
                                        IconButton(
                                          icon: Icon(
                                            Icons.remove,
                                            color: kPrimaryColor,
                                            size: 25,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: screenWidth(context),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: GestureDetector(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                color: kOrange,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add to otder',
                                                  style: tStyle(
                                                    size: 16,
                                                    color: kPrimaryColor,
                                                    weight: 6,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        Container(
                                          width: screenWidth(context) * 0.4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                            color: kPrimaryColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'NGN 7,000',
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
                            ),
                          ],
                        ),
                      );
                    },
                    child: FoodItemGrid(index + 2),
                  );
                },
                childCount: Food.getAllFood().length - 2,
              ),
            ),
          ),

          // the cart indicator container
          SliverPadding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: kOrange, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '2',
                            style: tStyle(
                                size: 16, color: Colors.white, weight: 5),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/success');
                        },
                        child: Text(
                          'Proceed to checkout',
                          style:
                              tStyle(size: 16, color: kPrimaryColor, weight: 6),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'NGN 7,000',
                            style: tStyle(
                                size: 16, color: Colors.white, weight: 5),
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
//              YMargin(25),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
