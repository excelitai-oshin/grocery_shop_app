import 'package:flutter/material.dart';
import 'package:grocery_shop_app/splash_screen.dart';
import 'package:provider/provider.dart';
 //import 'package:untitled2/HomePage_listview.dart';
// import 'package:untitled2/model/BundleOfferModels.dart';
// import 'package:untitled2/model/Popular_offers_list.dart';
// import 'package:untitled2/model/bundle_offers_list.dart';
// import 'package:untitled2/model/popular_listModels.dart';

import 'HomePage_listview.dart';
import 'model/BundleOfferModels.dart';
import 'model/popular_listModels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: BundleOffersModel()),
        ChangeNotifierProvider.value(value: PopularOffersModel()),
        ChangeNotifierProvider.value(value: ButtonModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        ),
        home:SplashScreen(),
      ),
    );
  }
}

