import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_one_container_screen/models/registration_one_container_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';

class RegistrationOneContainerController extends GetxController {
  Rx<RegistrationOneContainerModel> registrationOneContainerModelObj =
      RegistrationOneContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.splashScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
