import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview.dart';
import './screens/product_detail.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'iShop 2020',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.indigo,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('iShop! 2020'),
//      ),
//      body: Center(
//        child: Text('Let\'s build a shop!'),
//      ),
//    );
//  }
//}
