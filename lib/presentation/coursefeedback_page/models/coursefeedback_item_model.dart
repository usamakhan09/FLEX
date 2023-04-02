import 'package:get/get.dart';

class CoursefeedbackItemModel {
  CoursefeedbackItemModel(this.codeTxt,this.coursenameTxt,this.chTxt,this.feedbackTxt,this.statusTxt,{this.id});
  Rx<String> codeTxt;

  Rx<String> coursenameTxt;

  Rx<String> chTxt;

  Rx<String> statusTxt;

  Rx<String> feedbackTxt;

  String? id = "";
}
