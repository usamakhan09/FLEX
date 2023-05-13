import 'package:get/get.dart';

class TranscriptItemModel {
  TranscriptItemModel({required this.codeTxt,required this.coursenameTxt,required this.crdhrsTxt,required this.gradeTxt,required this.pointsTxt,required this.sectionTxt,required this.typeTxt,this.id});
  String codeTxt = "lbl_code";

  String coursenameTxt = "lbl_course_name";

  String sectionTxt = "lbl_section";

  String crdhrsTxt = "lbl_crdhrs";

  String gradeTxt = "lbl_grade";

  String pointsTxt = "lbl_points";

  String typeTxt = "lbl_type";

  String? id = "";
}
