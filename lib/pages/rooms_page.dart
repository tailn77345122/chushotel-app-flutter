import 'package:chushotelapp/model/rooms.dart';
import 'package:chushotelapp/screens/room_details_screen.dart';
import 'package:flutter/material.dart';
import '../widget/menu_widget.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Rooms Page',),
        leading: MenuWidget(),
      ),
      body: ListView.builder(
        itemCount: roomList.length,
        itemBuilder: (context, index) {
          Room room = roomList[index];
          return Card(
            child: ListTile(
              title: Text(room.title),
              leading: Image.asset(room.image),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RoomDetailsScreen(room)));
              },
            ),
          );
        },
        ),
    );
  }
}