import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => ProductListScreen(),
        "/cart": (BuildContext context) => CartScreen()
      },
    );
  }
}
