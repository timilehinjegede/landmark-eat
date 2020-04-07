import 'package:flutter/material.dart';
import 'package:landmarkeat/utils/images.dart';

class Ticket {
  final String name;
  final String location;
  final String price;
  final int quantity;
  final dynamic imagePath;
  final bool isComplete;

  Ticket(
      {this.name,
      this.location,
      this.price,
      this.quantity,
      this.imagePath,
      this.isComplete});

  static List<Ticket> getAllTicket() {
    return [
      Ticket(
        name: 'Quad Biking',
        location: 'The Landmark Hotel',
        price: 'NGN 41, 000',
        quantity: 2,
        imagePath: quad,
        isComplete: true,
      ),
      Ticket(
        name: 'Beach RAVE 3.0',
        location: 'Landmark Beach Lake',
        price: 'NGN 60, 000',
        quantity: 6,
        imagePath: beach,
        isComplete: false,
      ),
      Ticket(
        name: 'Lagos Walk',
        location: 'Lagos Market Merch',
        price: 'NGN 41, 000',
        quantity: 5,
        imagePath: lagos,
        isComplete: false,
      ),
      Ticket(
        name: 'Standard Suite',
        location: 'Land Waterview Lake',
        price: 'NGN 20, 000',
        quantity: 2,
        imagePath: suite,
        isComplete: true,
      ),
      Ticket(
        name: 'Skis Bike',
        location: 'Landmark Beach Lake',
        price: 'NGN 15, 000',
        quantity: 1,
        imagePath: skis,
        isComplete: false,
      ),
      Ticket(
        name: 'Suite Beach View',
        location: 'The Landmark Hotel',
        price: 'NGN 105, 000',
        quantity: 3,
        imagePath: suite,
        isComplete: true,
      ),
    ];
  }
}
