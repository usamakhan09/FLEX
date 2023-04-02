import 'package:get/get.dart';
import 'package:flex2/data/models/selectionPopupModel/selection_popup_model.dart';

class AttendanceModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "CS2009",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "CS2007",
    ),
    SelectionPopupModel(
      id: 3,
      title: "CS2008",
    )
  ].obs;
}
