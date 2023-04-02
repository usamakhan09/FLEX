import '../controller/coursefeedback_controller.dart';
import '../models/coursefeedback_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoursefeedbackItemWidget extends StatelessWidget {
  CoursefeedbackItemWidget(this.coursefeedbackItemModelObj);

  CoursefeedbackItemModel coursefeedbackItemModelObj;

  var controller = Get.find<CoursefeedbackController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            coursefeedbackItemModelObj.codeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium16Black900,
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 16,
          ),
          child: Obx(
            () => Text(
              coursefeedbackItemModelObj.coursenameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 22,
          ),
          child: Obx(
            () => Text(
              coursefeedbackItemModelObj.chTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 32,
          ),
          child: Obx(
            () => Text(
              coursefeedbackItemModelObj.feedbackTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16Black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 26,
          ),
          child: Obx(
            () => Container(
              height: 30,
              padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.coursefeedbackOneScreen);
                  },
                  child: Text(
                    coursefeedbackItemModelObj.statusTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsMedium16Black900
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
