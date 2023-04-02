import '../controller/coursefeedback_one_controller.dart';
import 'package:get/get.dart';

class CoursefeedbackOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoursefeedbackOneController());
  }
}
