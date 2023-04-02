import '../controller/tentative_study_plan_controller.dart';
import '../models/listcode_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListcodeItemWidget extends StatelessWidget {
  ListcodeItemWidget(this.listcodeItemModelObj);

  ListcodeItemModel listcodeItemModelObj;

  var controller = Get.find<TentativeStudyPlanController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            bottom: 2,
          ),
          child: Obx(
            () => Text(
              listcodeItemModelObj.codeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 43,
            bottom: 2,
          ),
          child: Obx(
            () => Text(
              listcodeItemModelObj.coursenameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 43,
            bottom: 2,
          ),
          child: Obx(
            () => Text(
              listcodeItemModelObj.chTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 30,
            top: 2,
          ),
          child: Obx(
            () => Text(
              listcodeItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
      ],
    );
  }
}
