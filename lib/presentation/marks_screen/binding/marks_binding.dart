import '../controller/marks_controller.dart';
import 'package:get/get.dart';

class MarksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarksController());
  }
}
