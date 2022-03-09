import 'package:chushotelapp/model/image.dart';
import 'package:flutter/material.dart';
import '../widget/menu_widget.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:card_swiper/card_swiper.dart';
import '../model/image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Home'),
        leading: MenuWidget(),
      ),
      body: Swiper(
        itemBuilder: (context, index) {
          final imageHome = imageHomeList[index];
          return Image.asset(
            imageHome.imageHome,
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: imageHomeList.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}