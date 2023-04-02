import '../controller/feechallan_one_controller.dart';
import 'package:get/get.dart';

class FeechallanOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeechallanOneController());
  }
}
