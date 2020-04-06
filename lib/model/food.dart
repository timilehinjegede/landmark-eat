import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/images.dart';

class Food {
  final String name;
  dynamic imgPath;
  final String price;

  Food({this.name, this.imgPath, this.price});

  static List<Food> getAllFood() {
    return [
      Food(
        name: 'Cassava Chips & Sauce',
        imgPath: chips0,
        price: '10, 500',
      ),
      Food(
        name: 'Cassava Chips & Sauce',
        imgPath: chips1,
        price: '10, 500',
      ),
      Food(
        name: 'Yam Sauce & Rice',
        imgPath: yam,
        price: '3, 500',
      ),
      Food(
        name: 'Amala & Ewedu',
        imgPath: amala,
        price: '3, 500',
      ),
      Food(
        name: 'Portugal Jollof',
        imgPath: jollof,
        price: '3, 500',
      ),
      Food(
        name: 'Plantain Balls',
        imgPath: plantain,
        price: '3, 500',
      )
    ];
  }
}
