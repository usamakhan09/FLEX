import '../controller/registration_one_container_controller.dart';
import 'package:get/get.dart';

class RegistrationOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationOneContainerController());
  }
}
