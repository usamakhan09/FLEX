import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      // print("dddd........${Auth.instance.auth.currentUser}");

      Get.toNamed(AppRoutes.signInScreen);
      // Get.offNamed(AppRoutes.signInEmailScreen);
      // if (user == null) {
      //   Get.toNamed(AppRoutes.signInEmailScreen);
      // } else {
      //   Get.toNamed(AppRoutes.dashboardContainerScreen);
      // }

      // print("object");
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
