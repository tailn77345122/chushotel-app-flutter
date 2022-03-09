import 'package:flutter/material.dart';

import '../widget/menu_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Notification'),
        leading: MenuWidget(),
      ),
    );
  }
}