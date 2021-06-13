import 'package:flutter/material.dart';
import 'package:spot_match/tab/Hotel.dart';
import 'package:spot_match/tab/all.dart';
import 'package:spot_match/tab/hot_spring.dart';
import 'package:spot_match/tab/restaurant.dart';
import 'package:spot_match/tab/leisure.dart';
import 'package:spot_match/tab/souvenir.dart';
import 'package:spot_match/tab/park.dart';

class TabInfo {
  String label;
  IconData icon;
  Widget widget;
  TabInfo(this.label, this.icon, this.widget);
}

class Header extends StatelessWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 2);

  final List<TabInfo> _tabs = [
    TabInfo("全て", Icons.all_inclusive, All()),
    TabInfo("温泉", Icons.hot_tub_rounded, HotSpring()),
    TabInfo("ホテル・旅館", Icons.hotel_outlined, Hotel()),
    TabInfo("飲食店", Icons.food_bank_outlined, Restaurant()),
    TabInfo("レジャー", Icons.park, Leisure()),
    TabInfo("お土産", Icons.shopping_cart_outlined, Souvenir()),
    TabInfo("駐車場", Icons.directions_car_rounded, Park()),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Spot Match"),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          onPressed: null,
        )
      ],
      bottom: TabBar(
        isScrollable: true,
        tabs: _tabs.map((TabInfo tab) {
          return Tab(
            text: tab.label,
            icon: Icon(tab.icon),
          );
        }).toList(),
      ),
    );
  }
}
