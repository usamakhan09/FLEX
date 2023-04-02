import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_screen/models/registration_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';

class RegistrationController extends GetxController {
  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
