import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    handleSplash();
    super.onInit();
  }

  Future<void> handleSplash() async {
    await Future.delayed(const Duration(seconds: 2));

    Get.offAllNamed("/loginScreen");
  }
}
