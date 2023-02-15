import 'package:flutter/material.dart';
import 'package:mandi/cart.dart';
import 'package:mandi/home.dart';
import 'package:mandi/navigate.dart';
import 'package:mandi/otp.dart';
import 'package:mandi/product.dart';
import 'package:mandi/welcome.dart';
import 'package:responsive_framework/responsive_framework.dart';
void main() {
  runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      builder: (context,widget)=>ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder((context), widget!),
          maxWidth: 1700,
          minWidth: 350,
          defaultScale: true,
          breakpoints: const[ResponsiveBreakpoint.autoScale(350,name: MOBILE),
            ResponsiveBreakpoint.autoScale(1000,name: TABLET),
            ResponsiveBreakpoint.autoScale(1200,name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700,name: 'XL'),
          ]
      ),
      debugShowCheckedModeBanner: false,
      home:welcome(),
    );
  }
}





