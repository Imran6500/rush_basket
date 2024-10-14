import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rushbaskets/views/home_screen/collected_coupons.dart';
import 'package:rushbaskets/views/home_screen/help_screen.dart';
import 'package:rushbaskets/views/home_screen/home_screen.dart';
import 'package:rushbaskets/views/home_screen/notification_screen.dart';
import 'package:rushbaskets/views/home_screen/profile_screen.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

import '../views/auth_screens/login_screen.dart';
import '../views/auth_screens/verification_screen.dart';

var pagePath = [
  GetPage(
    name: "/loginScreen",
    page: () => const LoginScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/verificationScreen",
    page: () => const VerificationScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/homeScreen",
    page: () => const HomeScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/bottomNavBar",
    page: () => BottomNavBar(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/profileScreen",
    page: () => const ProfileScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/helpScreen",
    page: () => const HelpScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/couponsScreen",
    page: () => const CollectedCouponsScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: "/notificationScreen",
    page: () => const NotificationScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 300),
  ),
];
