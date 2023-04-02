import 'package:get/get.dart';

class MarksItemModel {
  MarksItemModel(this.assignmentTxt, this.weightageTxt, this.obtainmarksTxt,
      this.totalmarksTxt,
      {this.id});
  Rx<String> assignmentTxt = Rx("lbl_assignment".tr);

  Rx<String> weightageTxt = Rx("lbl_weightage".tr);

  Rx<String> obtainmarksTxt = Rx("lbl_obtain_marks".tr);

  Rx<String> totalmarksTxt = Rx("lbl_total_marks".tr);

  String? id = "";
}
