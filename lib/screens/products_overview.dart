import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
import '../providers/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iShop 2020'),
      ),
      body: ProductsGrid(),
    );
  }
}

