import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import '../widget/menu_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text('Infomation'),
        leading: MenuWidget(),
      ),
      body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            email: 'kiedielezz@gmail.com',
            companyName: 'CHU\'S HOTEL',
            companyColor: Colors.red,
            dividerThickness: 2,
            phoneNumber: '+84933683425',
            tagLine: '45/20A Thuy Van, Vung Tau City',
            taglineColor: Colors.black,
            facebookHandle: 'duong.kute.372'),
    );
  }
}