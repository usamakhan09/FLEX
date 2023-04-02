import 'package:get/get.dart';

class TranscriptItemModel {
  TranscriptItemModel(this.codeTxt,this.coursenameTxt,this.crdhrsTxt,this.gradeTxt,this.pointsTxt,this.sectionTxt,this.typeTxt,{this.id});
  Rx<String> codeTxt = Rx("lbl_code".tr);

  Rx<String> coursenameTxt = Rx("lbl_course_name".tr);

  Rx<String> sectionTxt = Rx("lbl_section".tr);

  Rx<String> crdhrsTxt = Rx("lbl_crdhrs".tr);

  Rx<String> gradeTxt = Rx("lbl_grade".tr);

  Rx<String> pointsTxt = Rx("lbl_points".tr);

  Rx<String> typeTxt = Rx("lbl_type".tr);

  String? id = "";
}
