import '../coursefeedback_page/widgets/coursefeedback_item_widget.dart';
import 'controller/coursefeedback_controller.dart';
import 'models/coursefeedback_item_model.dart';
import 'models/coursefeedback_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CoursefeedbackPage extends StatelessWidget {
  CoursefeedbackController controller =
      Get.put(CoursefeedbackController(CoursefeedbackModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            99,
          ),
          title: Container(
            height: getVerticalSize(
              36,
            ),
            width: getHorizontalSize(
              212,
            ),
            margin: getMargin(
              left: 20,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                AppbarSubtitle(
                  text: "lbl_course_feedback".tr,
                ),
                // AppbarSubtitle(
                //   text: "lbl_course_feedback".tr,
                // ),
              ],
            ),
          ),
          actions: [
            Container(
              height: getSize(
                50,
              ),
              width: getSize(
                50,
              ),
              margin: getMargin(
                left: 20,
                top: 24,
                right: 20,
                bottom: 25,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AppbarCircleimage(
                    onTap: () {
                      Get.toNamed(AppRoutes.profileScreen);
                    },
                    imagePath: ImageConstant.imgEllipse4,
                  ),
                  // AppbarCircleimage(
                  //   imagePath: ImageConstant.imgEllipse4,
                  // ),
                ],
              ),
            ),
          ],
          styleType: Style.bgFillLightblueA700,
        ),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 52,
                  right: 15,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          10,
                        ),
                      );
                    },
                    itemCount: controller.coursefeedbackModelObj.value
                        .coursefeedbackItemList.length,
                    itemBuilder: (context, index) {
                      CoursefeedbackItemModel model = controller
                          .coursefeedbackModelObj
                          .value
                          .coursefeedbackItemList[index];
                      return CoursefeedbackItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
