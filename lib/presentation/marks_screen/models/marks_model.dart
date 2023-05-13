import 'package:get/get.dart';
import 'package:flex2/data/models/selectionPopupModel/selection_popup_model.dart';
import 'marks_item_model.dart';

class MarksModel {
  RxList<SelectionPopupModel> fallDropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Fall 2019",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Spring 2019",
      isSelected: true,
    ),
  ].obs;
  RxList<SelectionPopupModel> dropdownItemList =<SelectionPopupModel>[].obs;

  RxList<MarksItemModel> assignmentmarksItemList = [
    MarksItemModel(assignmentTxt: "lbl_assignment".tr.obs, weightageTxt: "lbl_weightage".tr.obs,
        obtainmarksTxt: "lbl_obtain_marks".tr.obs, totalmarksTxt: "lbl_total_marks".tr.obs),
   
  ].obs;
  RxList<MarksItemModel> sessional1 = [
  MarksItemModel(assignmentTxt: "lbl_assignment".tr.obs, weightageTxt: "lbl_weightage".tr.obs,
        obtainmarksTxt: "lbl_obtain_marks".tr.obs, totalmarksTxt: "lbl_total_marks".tr.obs),
  ].obs;
  RxList<MarksItemModel> sessional2 = [
   MarksItemModel(assignmentTxt: "lbl_assignment".tr.obs, weightageTxt: "lbl_weightage".tr.obs,
        obtainmarksTxt: "lbl_obtain_marks".tr.obs, totalmarksTxt: "lbl_total_marks".tr.obs),
  ].obs;
  RxList<MarksItemModel> finalmarks = [
   MarksItemModel(assignmentTxt: "lbl_assignment".tr.obs, weightageTxt: "lbl_weightage".tr.obs,
        obtainmarksTxt: "lbl_obtain_marks".tr.obs, totalmarksTxt: "lbl_total_marks".tr.obs),
  ].obs;
}
