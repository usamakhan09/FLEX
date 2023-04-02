import 'package:get/get.dart';
import 'transcript_item_model.dart';

class TranscriptModel {
  RxList<TranscriptItemModel> transcriptItemList = [
    TranscriptItemModel(
        "lbl_code".tr.obs,
        "lbl_course_name".tr.obs,
        "lbl_section".tr.obs,
        "lbl_crdhrs".tr.obs,
        "lbl_grade".tr.obs,
        "lbl_points".tr.obs,
        "lbl_type".tr.obs),
         TranscriptItemModel(
        "Cs2009".obs,
        "OOP".obs,
        "C".obs,
        "4".obs,
        "A+".obs,
        "4.00".obs,
        "Core".obs),
         TranscriptItemModel(
        "Cs2009".obs,
        "OOP".obs,
        "C".obs,
        "4".obs,
        "A+".obs,
        "4.00".obs,
        "Core".obs),
         TranscriptItemModel(
        "Cs2009".obs,
        "OOP".obs,
        "C".obs,
        "4".obs,
        "A+".obs,
        "4.00".obs,
        "Core".obs),
         TranscriptItemModel(
        "Cs2009".obs,
        "OOP".obs,
        "C".obs,
        "4".obs,
        "A+".obs,
        "4.00".obs,
        "Core".obs)
  ].obs;
  // RxList.generate(2, (index) => TranscriptItemModel());
}
