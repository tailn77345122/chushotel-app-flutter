import 'package:flutter/material.dart';
import '../model/menu_item.dart';


class MenuItems {
  static const homepage = MenuItem('Home', Icons.home_outlined);
  static const rooms = MenuItem('Rooms', Icons.loyalty_outlined);
  static const location = MenuItem('Location', Icons.location_on_outlined);
  static const info = MenuItem('Info', Icons.info_outline);
  static const privacypolicy = MenuItem('Privacy Policy', Icons.policy_outlined);
  static const notifications = MenuItem('Notifications', Icons.notifications_on_outlined);

  static const all = <MenuItem>[
    homepage,
    rooms,
    location,
    info,
    privacypolicy,
    notifications,
  ];

}


class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  
  const MenuPage({ Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 2,),
            ],
          ), 
        ),
      ),
    );
  }
  
  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => onSelectedItem(item),
    ),
  );

}

