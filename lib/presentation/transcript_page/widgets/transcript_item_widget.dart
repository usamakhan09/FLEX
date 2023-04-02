import '../controller/transcript_controller.dart';
import '../models/transcript_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TranscriptItemWidget extends StatelessWidget {
  TranscriptItemWidget(this.transcriptItemModelObj);

  TranscriptItemModel transcriptItemModelObj;

  var controller = Get.find<TranscriptController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.codeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.coursenameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.sectionTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.crdhrsTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 6,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.gradeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.pointsTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 6,
            top: 1,
          ),
          child: Obx(
            () => Text(
              transcriptItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          ),
        ),
      ],
    );
  }
}
