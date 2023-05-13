import 'package:get/get.dart';
import 'listcode_item_model.dart';

class TentativeStudyPlanModel {
  RxList<ListcodeItemModel> Sem1listcodeItemList = [
    ListcodeItemModel(codeTxt: "lbl_code2".tr,coursenameTxt: "lbl_course_name2".tr,
        chTxt:"Ch",typeTxt: "lbl_type".tr),
     ].obs;
      RxList<ListcodeItemModel> Sem2listcodeItemList = [
    ListcodeItemModel(codeTxt: "lbl_code2".tr,coursenameTxt: "lbl_course_name2".tr,
        chTxt:"Ch",typeTxt: "lbl_type".tr),
     ].obs;
      RxList<ListcodeItemModel> Sem3listcodeItemList = [
    ListcodeItemModel(codeTxt: "lbl_code2".tr,coursenameTxt: "lbl_course_name2".tr,
        chTxt:"Ch",typeTxt: "lbl_type".tr),
     ].obs;
  // RxList.generate(2, (index) => ListcodeItemModel());
}
