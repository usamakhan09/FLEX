import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex2/auth.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  User? user=Auth.instance.auth.currentUser;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      // print("dddd........${Auth.instance.auth.currentUser}");

       if (user == null) {
        Get.toNamed(AppRoutes.signInScreen);
      } else {
        Get.toNamed(AppRoutes.homePage);
      }


      // print("object");
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
