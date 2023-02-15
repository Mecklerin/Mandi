import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mandi/fruits.dart';
import 'package:mandi/vegetable.dart';
import 'package:mandi/wishlist.dart';

import 'cart.dart';
class product extends StatefulWidget {
  const product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> with TickerProviderStateMixin{
   late  TabController _tabController;
  final Tab = [

    // fruit(),
    // vegetable(),

  ];
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: Tab.length, vsync: this);
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
        // bottom: TabBar(
        //     ontroller: _tabController,
        //     tabs: [
        //
        // ]),
        bottom:  DefaultTabController(
          length: null,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        title: const Text('Tabs Demo'),
      ),
      body: const TabBarView(
        children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
    ),
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
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
                child: CarouselSlider.builder(
                options: CarouselOptions(
                  viewportFraction: 0.3,
                  aspectRatio: 1,
                  initialPage: 1,
                ),
                itemCount: lists1.length,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) =>
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(lists1[itemIndex].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 30,
                          child: Text(
                            lists1[itemIndex].text,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
              )),
        ],
      ),
      // body: TabBarView(
      //   controller: _tabController,
      //   children: [
      //
      //     fruit(),
      //     vegetable(),
      // ],),
      // body: DefaultTabController(length: lists1.length,
      //   child: TabBar(
      //     tabs: [
      //       Container(
      //         height: 100,
      //         child: ListView.builder(
      //           itemCount: lists1.length,
      //           scrollDirection: Axis.horizontal,
      //           itemBuilder: (BuildContext context, int index) {
      //             return  Card(
      //               child: Image(image: AssetImage( lists1[index].image),fit: BoxFit.cover,),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(5),
      //                 ),
      //                 elevation: 5,
      //                 margin: EdgeInsets.all(10),
      //             );
      //           },
      //
      //         ),
      //       ),
      //     ],
      //   ),
      //
      //
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //       height: 100,
      //       width: double.infinity,
      //       child: ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Container(
      //             decoration: new BoxDecoration(
      //               image: new DecorationImage(
      //                   image: new AssetImage(lists1[index].image),fit: BoxFit.fill,),
      //             )
      //         );
      //           },
      //       ),
      //     ),
      //   ],
      // ),
      // body: Container(
      //   height: 100,
      //   width: 100,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: <Widget>[
      //       ListTile(
      //         leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/homegrid/fruit.jpg"),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/homegrid/fruit.jpg"),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/homegrid/fruit.jpg"),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/homegrid/fruit.jpg"),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/homegrid/fruit.jpg"),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //         height: 250,
      //         width: double.infinity,
      //         color: Colors.white,
      //         padding: EdgeInsets.all(1),
      //         child: GridView.builder(
      //           itemCount: lists1.length,
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: lists1.length,
      //             crossAxisSpacing: 1,
      //             mainAxisSpacing: 1,
      //           ),
      //           itemBuilder: (BuildContext context, int index) {
      //             return Column(
      //               children: [
      //                 Container(
      //                   height: 50,
      //                   width: 50,
      //                   child: InkWell(
      //                     child: Container(
      //                       child: Image.asset(
      //                         lists1[index].image,
      //                         fit: BoxFit.fill,
      //                       ),
      //                     ),
      //                     onTap: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => product()),
      //                       );
      //                     },
      //                   ),
      //                 ),
      //                 Text(
      //                   lists1[index].text,
      //                   style: TextStyle(
      //                       fontSize: 15, fontWeight: FontWeight.bold),
      //                 ),
      //               ],
      //             );
      //           },
      //         )),
      //   ],
      // ),
    );
  }
}

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
