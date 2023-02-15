import 'package:flutter/material.dart';

import 'home.dart';
class wishlist extends StatefulWidget {
  const wishlist({Key? key}) : super(key: key);

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        title: Text('My Wishlist'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Your Wishlist is Empty',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Center(child: Text('Tap heart button on the product to add to wish list'),),
          Container(
              height: 250,
              width: 250,
              child: Image(image: AssetImage('assets/Cart/wish.JPG'))),
          SizedBox(height: 20,),
          FloatingActionButton.extended(
            label: Text('Continue Shopping',style: TextStyle(color: Colors.black),), // <-- Text
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.shopping_cart,
              size: 24.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],

      ),
    );
  }
}
