import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_one_page/models/listcs2009_item_model.dart';
import 'package:flex2/presentation/registration_one_page/models/registration_one_model.dart';

class RegistrationOneController extends GetxController {
  RegistrationOneController();
  var courses = <Course>[].obs;
  // Rx<RegistrationOneModel> registrationOneModelObj;

  @override
  void onReady() {
    _fetchCourses();
    super.onReady();
  }

  void _fetchCourses() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('courses').get();

    final List<Course> coursesList = [];
    for (final document in querySnapshot.docs) {
      final course = Course.fromSnapshot(document);
      coursesList.add(course);
    }

    courses.value = coursesList;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
