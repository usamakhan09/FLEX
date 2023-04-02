import '../controller/marks_controller.dart';
import '../models/marks_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MarksItemWidget extends StatelessWidget {
  MarksItemWidget(this.marksItemModelObj);

  MarksItemModel marksItemModelObj;

  var controller = Get.find<MarksController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),

          // SizedBox(height: 10,),
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Obx(
              () => Text(
                marksItemModelObj.assignmentTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              left: 14,
              top: 1,
            ),
            child: Obx(
              () => Text(
                marksItemModelObj.weightageTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12,
              ),
            ),
          ),
          Spacer(),

          Padding(
            padding: getPadding(
              left: 14,
              bottom: 1,
            ),
            child: Obx(
              () => Text(
                marksItemModelObj.obtainmarksTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12,
              ),
            ),
          ),
          Spacer(),

          Padding(
            padding: getPadding(
              left: 14,
              bottom: 1,
            ),
            child: Obx(
              () => Text(
                marksItemModelObj.totalmarksTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
