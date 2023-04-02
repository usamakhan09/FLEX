import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/marks_screen/models/marks_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MarksController extends GetxController {
  TextEditingController courseheadingController = TextEditingController();

  TextEditingController markslistController = TextEditingController();

  TextEditingController fallCounterController = TextEditingController();

  Rx<MarksModel> marksModelObj = MarksModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedFallDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    courseheadingController.dispose();
    markslistController.dispose();
    fallCounterController.dispose();
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

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    marksModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    marksModelObj.value.dropdownItemList.refresh();
  }
}
