import 'package:get/get.dart';
import 'coursefeedback_item_model.dart';

class CoursefeedbackModel {
  RxList<CoursefeedbackItemModel> coursefeedbackItemList = [
    CoursefeedbackItemModel(Rx("lbl_code2".tr), Rx("lbl_course_name2".tr),
        Rx("lbl_ch".tr), Rx("lbl_status".tr), Rx("lbl_feedback".tr)),
 CoursefeedbackItemModel("CS2034".obs, "OOP".obs,
        "4".obs,"Submitted".obs,"submit".obs),
        CoursefeedbackItemModel("CS2034".obs, "OOP".obs,
        "4".obs,"Submitted".obs,"submit".obs),
        CoursefeedbackItemModel("CS2034".obs, "OOP".obs,
        "4".obs,"Submitted".obs,"submit".obs),
        CoursefeedbackItemModel("CS2034".obs, "OOP".obs,
        "4".obs,"Submitted".obs,"submit".obs),
  ].obs;
  // RxList.generate(3, (index) => CoursefeedbackItemModel());
}
