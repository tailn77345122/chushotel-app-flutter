import 'package:chushotelapp/model/menu_item.dart';
import 'package:chushotelapp/pages/info_page.dart';
import 'package:chushotelapp/pages/location_page.dart';
import 'package:chushotelapp/pages/notification_page.dart';
import 'package:chushotelapp/pages/policy_page.dart';
import 'package:chushotelapp/pages/rooms_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'pages/home_screenpage.dart';
import 'pages/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem currentItem = MenuItems.homepage;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
    style: DrawerStyle.Style1,
    mainScreen: getScreen(),
    menuScreen: Builder(
      builder: (context) {
        return MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() => currentItem = item);
            ZoomDrawer.of(context)!.close();
          },
        );
      }
    ), 
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.fastOutSlowIn,
          
  );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.homepage:
        return HomeScreen();
      case MenuItems.rooms:
        return RoomPage();
      case MenuItems.location:
        return LocationPage();
      case MenuItems.info:
        return InfoPage();
      case MenuItems.privacypolicy:
        return PolicyPage();
      case MenuItems.notifications:
        default:
          return NotificationPage();
    }
  }
}
