import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/attendance_screen/models/attendance_model.dart';
// import 'package:flex2/widgets/custom_bottom_bar.dart';

class AttendanceController extends GetxController {
  Rx<AttendanceModel> attendanceModelObj = AttendanceModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    attendanceModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceModelObj.value.dropdownItemList.refresh();
  }
}
