import 'package:api_demo/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Dunk Low",
        price: "100",
        description: "description",
        imgPath: "images/s1.png"),
    Shoe(
        name: "Nike Dunk High",
        price: "230",
        description: "description",
        imgPath: "images/s2.png"),
    Shoe(
        name: "Nike Mercurial Superfly",
        price: "120",
        description: "description",
        imgPath: "images/s3.png"),
    Shoe(
        name: "Nike Air Force",
        price: "300",
        description: "description",
        imgPath: "images/s4.png"),
  ];

//add cart
  List<Shoe> userCart = [];

//return all data
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//return cart items
  List<Shoe> getCarTitems() {
    return userCart;
  }

  //add Cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //delete item from cart
  void deleteItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
