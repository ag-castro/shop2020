import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/user_products.dart';
import './providers/orders.dart';
import './providers/cart.dart';
import './screens/products_overview.dart';
import './screens/cart.dart';
import './screens/product_detail.dart';
import './providers/products.dart';
import './screens/orders.dart';
import './screens/edit_product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
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
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
