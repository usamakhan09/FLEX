import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/marks_screen/models/marks_item_model.dart';
import 'package:flex2/presentation/marks_screen/models/marks_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MarksController extends GetxController {
  TextEditingController courseheadingController = TextEditingController();
  var headingTxt = "".obs;
  TextEditingController markslistController = TextEditingController();

  TextEditingController fallCounterController = TextEditingController();

  Rx<MarksModel> marksModelObj = MarksModel().obs;
  var listOfmarks = <Marks>[].obs;

  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedFallDropDownValue;

  @override
  void onReady() {
    _fetchCourses();
    super.onReady();
  }

  mylistPopulator() {
    Set<String> uniqueCourseNames = {};
    List<SelectionPopupModel> temp = [];
    int id = 1;
// iterate over the list of Marks objects and add each unique course name to the Set
    for (Marks marks in listOfmarks.value) {
      uniqueCourseNames.add(marks.name);
    }
    for (String i in uniqueCourseNames.toList()) {
      var pus = SelectionPopupModel(id: id, title: i, value: i);
      temp.add(pus);
      id++;
    }
    // create a new List with the unique course names
    marksModelObj.value.dropdownItemList.value = temp;
    marksModelObj.value.dropdownItemList.refresh();
    print(uniqueCourseNames);

    print(marksModelObj.value.dropdownItemList.value.toList());
  }

  @override
  void onClose() {
    super.onClose();
    courseheadingController.dispose();
    markslistController.dispose();
    fallCounterController.dispose();
  }

  void _fetchCourses() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('marks').get();

    final List<Marks> listOfmarks1 = [];
    for (final document in querySnapshot.docs) {
      final course = Marks.fromSnapshot(document);
      listOfmarks1.add(course);
      print(course);
    }

    listOfmarks.value = listOfmarks1;
    mylistPopulator();
  }

  onFallSelected(dynamic value) {
    selectedFallDropDownValue = value as SelectionPopupModel;
    marksModelObj.value.fallDropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    marksModelObj.value.fallDropdownItemList.refresh();
  }

  populate() {
    MarksItemModel model;
    listOfmarks.forEach((element) {
      model = MarksItemModel(
          assignmentTxt: "${element.weightage}".tr.obs,
          weightageTxt: "${element.weightage}".tr.obs,
          obtainmarksTxt: "${element.obtainedMarks}".tr.obs,
          totalmarksTxt: "${element.totalMarks}".tr.obs);
      if (element.type == 'Assignment') {
        marksModelObj.value.assignmentmarksItemList.add(model);
      } else if (element.type == 'Mid 2') {
        marksModelObj.value.sessional2.add(model);
      } else if (element.type == 'Mid 1') {
        marksModelObj.value.sessional1.add(model);
      } else {
        marksModelObj.value.finalmarks.add(model);
      }
    });
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    for (var element in marksModelObj.value.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
        headingTxt.value = element.value;
        populate();
      }
    }

    marksModelObj.value.dropdownItemList.refresh();
  }
}
