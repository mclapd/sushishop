import 'package:flutter/material.dart';
import 'package:sushishop/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "21.00",
      imagePath: "assets/images/sushi_4.png",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "23.00",
      imagePath: "assets/images/sushi_5.png",
      rating: "4.9",
    ),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenue => foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
