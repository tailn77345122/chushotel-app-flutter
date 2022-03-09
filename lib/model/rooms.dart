import 'package:flutter/material.dart';

class Room {
  String title;
  String description;
  String image;
  String price;

  Room({
    required this.title, 
    required this.description,
    required this.image,
    required this.price,
  });


}

List<Room> roomList = [
  Room(
    title: 'Standard Double Room', 
    description: 'Details: 1 double bed, max 2 adults, shower, packing, free wifi.', 
    image: 'assets/images/room4.jpg', 
    price: '300.000VNĐ',),
  Room(
    title: 'Suite Family Room', 
    description: 'Details: 2 queen bed, max 4 adults, shower, packing, free wifi.', 
    image: 'assets/images/room2.jpg', 
    price: '500.000VNĐ',),
];