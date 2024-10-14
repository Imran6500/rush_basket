import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/cart/cart_screen.dart';
import '../views/category.dart/category_screen.dart';
import '../views/home_screen/home_screen.dart';
import '../views/order/order_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs; // Observable integer to track selected index

  // List of pages to display in the bottom navigation
  final List<Widget> pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const OrdersScreen(),
  ];

  // Function to update the selected index
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
