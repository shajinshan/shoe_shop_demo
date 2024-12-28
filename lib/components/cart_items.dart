import 'package:api_demo/model/cart.dart';
import 'package:api_demo/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  
  CartItem({super.key, required this.shoe,});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

   void removeItemFromCart() {
    
    Provider.of<Cart>(context, listen: false).deleteItemFromCart(widget.shoe);
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 249, 247, 247),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Image.asset(widget.shoe.imgPath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.description),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed:removeItemFromCart,
          ),
        ),)
    );
  }
}
