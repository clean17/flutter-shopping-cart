import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/theme.dart';

import 'components/shopping_header.dart';
import 'components/shoppingcart_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatefulWidget {
  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {

  int _test = 0;

  void updateState(int id){
    setState(() {
      _test = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(updateState: updateState,),
          ShoppingCartDetail(id: _test),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {

        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        SizedBox(width: 16),
      ],
      elevation: 0.0,
    );
  }
}
