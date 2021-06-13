import 'package:flutter/material.dart';
import 'package:spot_match/header.dart';
import 'package:spot_match/tab/all.dart';
import 'package:spot_match/tab/hot_spring.dart';
import 'package:spot_match/tab/hotel.dart';
import 'package:spot_match/tab/restaurant.dart';
import 'package:spot_match/tab/leisure.dart';
import 'package:spot_match/tab/souvenir.dart';
import 'package:spot_match/tab/park.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
);

class TabInfo {
  String label;
  IconData icon;
  Widget widget;
  TabInfo(this.label, this.icon, this.widget);
}

final List<TabInfo> _tabs = [
  TabInfo("全て", Icons.all_inclusive, All()),
  TabInfo("温泉", Icons.hot_tub_rounded, HotSpring()),
  TabInfo("ホテル・旅館", Icons.hotel_outlined, Hotel()),
  TabInfo("飲食店", Icons.food_bank_outlined, Restaurant()),
  TabInfo("レジャー", Icons.park, Leisure()),
  TabInfo("お土産", Icons.shopping_cart_outlined, Souvenir()),
  TabInfo("駐車場", Icons.directions_car_rounded, Park())
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: Header(),
        body: TabBarView(children: _tabs.map((tab) => tab.widget).toList()),
        bottomNavigationBar:
        BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("リスト")),
            BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("地図")),
          ],
          // currentIndex: _currentIndex,
          fixedColor: Colors.blueAccent,
          // onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}