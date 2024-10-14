// ignore_for_file: public_member_api_docs, sort_constructors_first

// primary btn
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../controllers/bottom_nav_controller.dart';
import '../../core/colors.dart';

class PrimaryBtnWidget extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final double btnTextSize;
  Color color;

  VoidCallback onTap;

  PrimaryBtnWidget({
    super.key,
    required this.name,
    required this.width,
    required this.height,
    required this.btnTextSize,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                fontSize: btnTextSize,
                fontWeight: FontWeight.w800,
                color: whiteColor),
          ),
        ),
      ),
    );
  }
}

// verticle spacing
class VerticleSpacing extends StatelessWidget {
  double height;
  VerticleSpacing({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

// horizontal spacing
class HorizontalSpacing extends StatelessWidget {
  double width;
  HorizontalSpacing({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

// bottom nav bar

class BottomNavBar extends StatelessWidget {
  // Get the controller instance
  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Obx to listen for changes in the selectedIndex
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped, // Use the controller method
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffEF8120),
            unselectedItemColor: Colors.white,
            backgroundColor: const Color(0xFF194872),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "Categories"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: "Orders"),
            ],
          )),
    );
  }
}
