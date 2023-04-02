import '../tentative_study_plan_page/widgets/listcode_item_widget.dart';
import 'controller/tentative_study_plan_controller.dart';
import 'models/listcode_item_model.dart';
import 'models/tentative_study_plan_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TentativeStudyPlanPage extends StatelessWidget {
  TentativeStudyPlanController controller =
      Get.put(TentativeStudyPlanController(TentativeStudyPlanModel().obs));

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
              36.03,
            ),
            width: getHorizontalSize(
              251,
            ),
            margin: getMargin(
              left: 20,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // AppbarSubtitle(
                //   text: "msg_student_transcript".tr,
                //   margin: getMargin(
                //     right: 24,
                //   ),
                // ),
                AppbarSubtitle(
                  text: "msg_tentative_study".tr,
                ),
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
          width: getHorizontalSize(
            388,
          ),
          margin: getMargin(
            left: 20,
            top: 31,
            right: 20,
          ),
          padding: getPadding(
            left: 10,
            top: 16,
            right: 10,
            bottom: 16,
          ),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 7,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        10,
                      ),
                      width: getSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 13,
                        bottom: 12,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.black900,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                        "lbl_semester_no_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium24,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 7,
                ),
                padding: getPadding(
                  all: 20,
                ),
                decoration: AppDecoration.outlineGray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          3,
                        ),
                      );
                    },
                    itemCount: controller.tentativeStudyPlanModelObj.value
                        .listcodeItemList.length,
                    itemBuilder: (context, index) {
                      ListcodeItemModel model = controller
                          .tentativeStudyPlanModelObj
                          .value
                          .listcodeItemList[index];
                      return ListcodeItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
