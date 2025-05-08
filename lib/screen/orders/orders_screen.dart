import 'package:flutter/material.dart';
import 'package:tech_app/constants/colors.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kSelectCardBackgroundColor,
        centerTitle: true,
        elevation: 3,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/cart.jpeg',
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ),
        const SizedBox(height: 10,),
        Text(
          'Cart is Empty',
          style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
