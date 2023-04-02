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
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Design and Analysis Algorithm",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Design and Analysis Algorithm",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Design and Analysis Algorithm",
    )
  ].obs;

  RxList<MarksItemModel> marksItemList = [
    MarksItemModel("lbl_assignment".tr.obs, "lbl_weightage".tr.obs,
        "lbl_obtain_marks".tr.obs, "lbl_total_marks".tr.obs),
    MarksItemModel("10".tr.obs, "10".tr.obs, "10".tr.obs, "10".tr.obs),
    MarksItemModel("10".tr.obs, "10".tr.obs, "10".tr.obs, "10".tr.obs),
    MarksItemModel("10".tr.obs, "10".tr.obs, "10".tr.obs, "10".tr.obs)
  ].obs;
}
