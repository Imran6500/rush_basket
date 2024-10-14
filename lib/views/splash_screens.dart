import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/controllers/splash_controller.dart';
import 'package:rushbaskets/core/colors.dart';

import '../core/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());

    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Image.asset(AssetsImages.appIcon),
      ),
    );
  }
}
