import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/feechallan_page/models/feechallan_model.dart';

class FeechallanController extends GetxController {
  FeechallanController(this.feechallanModelObj);

  Rx<FeechallanModel> feechallanModelObj;

  var courses=PaymentModel(amount: 0, dueDate: '', generatedOn: '', onlinePaymentThroughNift: '',printChallan: "", quickPaymentDetail: '', status: '',).obs;
  @override
  void onReady() {
    _fetchCourses();
    super.onReady();
  }

  void _fetchCourses() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('fees').get();

    final List<PaymentModel> coursesList = [];
    for (final document in querySnapshot.docs) {
      final course = PaymentModel.fromSnapshot(document);

      courses.value = course;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
