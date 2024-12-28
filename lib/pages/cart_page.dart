import 'package:api_demo/components/cart_items.dart';
import 'package:api_demo/model/cart.dart';
import 'package:api_demo/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

 

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const   Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              "Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          value.getCarTitems().isEmpty
              ? const Center(child: Text("cart is empty"))
              : Expanded(
                  child: ListView.builder(
                  itemCount: value.getCarTitems().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getCarTitems()[index];
                    return CartItem(
                     
                      shoe: individualShoe,
                    );
                  },
                ))
        ],
      ),
    );
  }
}
