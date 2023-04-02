import '../transcript_page/widgets/transcript_item_widget.dart';
import 'controller/transcript_controller.dart';
import 'models/transcript_item_model.dart';
import 'models/transcript_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TranscriptPage extends StatelessWidget {
  TranscriptController controller =
      Get.put(TranscriptController(TranscriptModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            99,
          ),
          title: AppbarSubtitle(
            text: "msg_student_transcript".tr,
            margin: getMargin(
              left: 20,
            ),
          ),
          actions: [
            AppbarCircleimage(
              onTap: () {
                Get.toNamed(AppRoutes.profileScreen);
              },
              imagePath: ImageConstant.imgEllipse4,
              margin: getMargin(
                left: 20,
                top: 24,
                right: 20,
                bottom: 25,
              ),
            ),
          ],
          styleType: Style.bgFillLightblueA700,
        ),
        body: Container(
          width: getHorizontalSize(
            408,
          ),
          margin: getMargin(
            left: 12,
            top: 11,
            right: 8,
          ),
          padding: getPadding(
            left: 12,
            top: 14,
            right: 12,
            bottom: 14,
          ),
          decoration: AppDecoration.outlineBlack9003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 3,
                ),
                child: Text(
                  "lbl_fall_2019".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold24Black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 9,
                ),
                child: Text(
                  "msg_cr_attempt_14".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 11,
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
                    itemCount: controller
                        .transcriptModelObj.value.transcriptItemList.length,
                    itemBuilder: (context, index) {
                      TranscriptItemModel model = controller
                          .transcriptModelObj.value.transcriptItemList[index];
                      return TranscriptItemWidget(
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
