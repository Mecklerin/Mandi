import 'package:flutter/material.dart';
import 'package:mandi/home.dart';
import 'package:mandi/navigate.dart';
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        title: Text('My Orders'),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>navigate()));
        },
          icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: Text('Your Orders is Empty',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
         SizedBox(height: 20,),
          Container(
            height: 250,
              width: 250,
              child: Image(image: AssetImage('assets/Cart/emptycart.JPG'))),
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
             Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
            },
          ),
        ],

      ),
    );
  }
}
