import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/core/page_path.dart';
import 'package:rushbaskets/views/auth_screens/verification_screen.dart';
import 'package:rushbaskets/views/home_screen/home_screen.dart';
import 'package:rushbaskets/views/home_screen/profile_screen.dart';
import 'package:rushbaskets/views/splash_screens.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

import 'views/widgets/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pagePath,
      home: const HomeScreen(),
    );
  }
}
