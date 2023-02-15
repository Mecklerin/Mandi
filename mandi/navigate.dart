import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandi/product.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'cart.dart';
import 'home.dart';
class navigate extends StatefulWidget {
  const navigate({Key? key}) : super(key: key);

  @override
  State<navigate> createState() => _navigateState();
}

class _navigateState extends State<navigate> {
  Color mainColor =  Colors.transparent;
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);

  int _a =0;

  void b(index)
  {
    setState(()
    {
      _a =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens:  [
          home(),
          product(),
          cart(),
        ],
        items: _navBarsItems(),

        navBarStyle: NavBarStyle.style1,
      ),
      //
      // body:
      // Container(
      //   height: MediaQuery.of(context).size.height,
      //   child: pages[_a],
      // ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.brown,
      //   color: Colors.green,
      //   items:[
      //     Icon(Icons.home, size: 25,color: Colors.brown,),
      //     Icon(Icons.format_list_bulleted, size: 25,color: Colors.brown,),
      //     Icon(Icons.shopping_cart_sharp, size: 25,color: Colors.brown,),
      //
      //
      //   ],
      //   index: _a,
      //   onTap: b,
      //
      // ),
    );
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.brown,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.square_list),
        title: ("Search"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.brown,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cart),
        title: ("Chat"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.brown,
      ),

    ];

  }
}
