import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_one_page/models/listcs2009_item_model.dart';
import 'package:flex2/presentation/tentative_study_plan_page/models/tentative_study_plan_model.dart';

import '../models/listcode_item_model.dart';

class TentativeStudyPlanController extends GetxController {
  TentativeStudyPlanController(this.tentativeStudyPlanModelObj);
  var courses = <Course>[].obs;

  Rx<TentativeStudyPlanModel> tentativeStudyPlanModelObj;

  @override
  void onReady() {
    _fetchstudyPlan();
    super.onReady();
  }

  void _fetchstudyPlan() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('Tenantive').get();

    final List<Course> coursesList = [];
    for (final document in querySnapshot.docs) {
      final course = Course.fromSnapshot(document);
      coursesList.add(course);
    }

    courses.value = coursesList;
    mylistPopulator();
  }

  mylistPopulator() {
    courses.value.forEach((element) {
      print(element);
      var model = ListcodeItemModel(
          codeTxt: "${element.code}",
          coursenameTxt: "${element.name}",
          chTxt: "${element.ch}",
          typeTxt: "${element.type}");
      if (element.semester == 1) {
        tentativeStudyPlanModelObj.value.Sem1listcodeItemList.add(model);
      } else if (element.semester == 2) {
        tentativeStudyPlanModelObj.value.Sem2listcodeItemList.add(model);
      } else {
        tentativeStudyPlanModelObj.value.Sem3listcodeItemList.add(model);
      }

      // transcriptModelObj.value.transcriptItemList.add(model);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
