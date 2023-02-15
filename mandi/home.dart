import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:mandi/cart.dart';
import 'package:mandi/product.dart';
import 'package:mandi/wishlist.dart';

import 'colors/colors.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        centerTitle: true,
        title: Text("MANDI"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 180,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xff1d1d1d),
                    image: DecorationImage(
                        image: AssetImage("assets/homedrawer/logo.png"),
                        fit: BoxFit.contain)),
                child: Text(""),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.edit),
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1.5, color: Colors.green)),
                                    icon: Icon(Icons.person),
                                    labelText: 'Your Name'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1.5, color: Colors.green)),
                                    icon: Icon(Icons.phone),
                                    labelText: 'Phone Number'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1.5, color: Colors.green)),
                                    icon: Icon(Icons.mail),
                                    labelText: 'Email ID'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text('Submit'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Orders',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              title: const Text(
                'Wishlist',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wishlist()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.format_list_bulleted,
                color: Colors.black,
              ),
              title: const Text(
                'Address book',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'No Address found\nTap on + button to add address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            SizedBox(
                              height: 70,
                              width: 70,
                              child: FloatingActionButton(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.black,
                                child: Center(
                                    child: Text(
                                  '+',
                                  style: TextStyle(fontSize: 50),
                                )),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background (button) color
                  foregroundColor: Colors.black, // foreground (text) color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout_outlined), //icon data for elevated button
                    Text(
                      "  Logout",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 150,
                width: 450,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 1,
                    initialPage: 1,
                  ),
                  itemCount: lists.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(lists[itemIndex].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 150,
                        width: 800,
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    '  What are you looking for...?',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 260,
                width: 600,
                color: Colors.white,
                padding: EdgeInsets.all(1),
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          child: InkWell(
                            child: Container(
                              child: Image.asset(
                                lists1[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => product()),
                              );
                            },
                          ),
                        ),
                        Text(
                          lists1[index].text,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                )),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homedrawer/logo.png"),
                      fit: BoxFit.contain)),
            ),
          ],
        ),
      ),
    );
  }
}

class modelM {
  String? image;

  modelM(this.image);
}

List lists = modelData.map((e) => modelM(e['image'])).toList();
var modelData = [
  {'image': 'assets/homeslider1/Capture1.JPG'},
  {'image': 'assets/homeslider1/Capture2.JPG'},
  {'image': 'assets/homeslider1/Capture3.jpg'},
  {'image': 'assets/homeslider1/Capture4.jpg'},
  {'image': 'assets/homeslider1/Capture5.jpg'},
];

class modelM1 {
  String? image;
  String? text;

  modelM1(this.image, this.text);
}

List lists1 = modelData1.map((e) => modelM1(e['image'], e['text'])).toList();
var modelData1 = [
  {'image': 'assets/homegrid/fruit.jpg', 'text': 'Fruits'},
  {'image': 'assets/homegrid/vegetable.jpg', 'text': 'Vegetables'},
  {'image': 'assets/homegrid/grocery.jpg', 'text': 'Groceries'},
  {'image': 'assets/homegrid/stationery.jpeg', 'text': 'Stationaries'},
  {'image': 'assets/homegrid/beverages.jpg', 'text': 'Beverages'},
  {'image': 'assets/homegrid/dairy.jpg', 'text': 'Dairy Products'},
];
