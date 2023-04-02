import 'package:get/get.dart';
import 'listcode_item_model.dart';

class TentativeStudyPlanModel {
  RxList<ListcodeItemModel> listcodeItemList = [
    ListcodeItemModel("lbl_code2".tr.obs, "lbl_course_name2".tr.obs,
        "Ch".obs, "lbl_type".tr.obs),

      ListcodeItemModel("cs2009".obs, "DS".tr.obs,
        "3".tr.obs, "core".tr.obs),   
        
      ListcodeItemModel("cs2009".obs, "DS".tr.obs,
        "4".tr.obs, "core".tr.obs),    
        
      ListcodeItemModel("cs2009".obs, "DS".tr.obs,
        "4".tr.obs, "core".tr.obs),    
        
      ListcodeItemModel("cs2009".obs, "DS".tr.obs,
        "4".tr.obs, "core".tr.obs),    
        
      ListcodeItemModel("cs2009".obs, "DS".tr.obs,
        "4".tr.obs, "core".tr.obs),     
  ].obs;
  // RxList.generate(2, (index) => ListcodeItemModel());
}
