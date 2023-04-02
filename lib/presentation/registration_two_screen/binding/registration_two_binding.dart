import '../controller/registration_two_controller.dart';
import 'package:get/get.dart';

class RegistrationTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationTwoController());
  }
}
