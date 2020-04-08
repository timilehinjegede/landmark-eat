import 'package:flutter/material.dart';
import 'package:landmarkeat/screens/home.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/styles.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<AssetImage> _imageList = [
    AssetImage(
      'images/relaxation.png',
    ),
    AssetImage(
      'images/food.png',
    ),
    AssetImage(
      'images/fun.png',
    ),
    AssetImage(
      'images/party.png',
    ),
  ];

  List<String> _quoteList = [
    'Awesome relaxation',
    'All kind of fun activities',
    'All kinds of food',
    'Attend your favourite party'
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: _currentPage == 0
              ? _imageList[0]
              : _currentPage == 1
                  ? _imageList[1]
                  : _currentPage == 2
                      ? _imageList[2]
                      : _currentPage == 3 ? _imageList[3] : null,
          fit: BoxFit.cover,
        ),),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    _buildOnboarding(_quoteList.elementAt(0)),
                    _buildOnboarding(_quoteList.elementAt(1)),
                    _buildOnboarding(_quoteList.elementAt(2)),
                    _buildOnboarding(_quoteList.elementAt(3)),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.9,
                left: MediaQuery.of(context).size.width * 0.36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              _currentPage != 3 ?  Positioned(
                left: MediaQuery.of(context).size.width * 0.8,
                top: 5,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {

                      // if we want the next option
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );

                    // if we want the skip option
//                      setState(() {
//                        _currentPage = 3;
//                      });
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ) :
              Positioned(
                left: MediaQuery.of(context).size.width * 0.8,
                top: 5,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildOnboarding(String quote) {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: 150.0),
        Text(
          quote,
          style: kSubtitleStyle,
        ),
        SizedBox(height: 5.0),
        Text(
          'Landmark',
          style: kTitleStyle,
          textAlign: TextAlign.center,
        ),
        YMargin(60),
      ],
    ),
  );
}
