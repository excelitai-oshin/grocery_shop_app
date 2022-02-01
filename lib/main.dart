import 'package:flutter/material.dart';
import 'package:grocery_shop_app/Cancel_Order.dart';
import 'package:grocery_shop_app/No_History.dart';
import 'package:grocery_shop_app/confirm.dart';
import 'package:grocery_shop_app/empty_cart.dart';
import 'package:grocery_shop_app/search_results.dart';
import 'package:grocery_shop_app/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Confirm(),
    );
  }
}

