import 'package:flutter/material.dart';
import '../model/rooms.dart';
import 'package:url_launcher/url_launcher.dart';


class RoomDetailsScreen extends StatelessWidget {

  final Room room;
  RoomDetailsScreen(this.room);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(room.title),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(room.image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              room.title, 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              room.description, 
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0,),
              ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              room.price, 
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                ),                
                ),
              ),  
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {launch('tel: +84 933683425');}, 
              child: Text('Book Now')),
        ),                                                    
        ],
      ),
      ),
    );
  }
}