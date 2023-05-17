import 'package:farmers_fresh_ui/pages/account.dart';
import 'package:farmers_fresh_ui/pages/cart.dart';
import 'package:farmers_fresh_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var pages = [
    Home(),
    Cart(),
    Account()
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: index,
        onSelect: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        items: [
          BottomBarItem(iconData: Icons.home, label: "Home"),
          BottomBarItem(iconData: Icons.shopping_cart, label: "Cart"),
          BottomBarItem(
              iconData: Icons.account_circle_rounded, label: "Account"),
        ],
      ),
      body: pages[index]
    );
  }
}
