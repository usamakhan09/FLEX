import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';

import 'controller/feechallan_one_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/tentative_study_plan_page/tentative_study_plan_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FeechallanOneScreen extends GetWidget<FeechallanOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            98,
          ),
          title: AppbarSubtitle(
            text: "lbl_feechalan2".tr,
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
                top: 23,
                right: 20,
                bottom: 25,
              ),
            ),
          ],
          styleType: Style.bgFillBlueA20001,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: getHorizontalSize(
              394,
            ),
            margin: getMargin(
              left: 14,
              top: 16,
              right: 20,
            ),
            padding: getPadding(
              left: 7,
              top: 17,
              right: 7,
              bottom: 17,
            ),
            decoration: AppDecoration.fillBlue10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getHorizontalSize(
                      360,
                    ),
                    margin: getMargin(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        "msg_fee_can_be_paid".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium16Black9001,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                    bottom: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "lbl_ok".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Remixiconsfil:
        return AppRoutes.registrationOneScreen;
      case BottomBarEnum.Clock:
        return AppRoutes.transcriptPage;
      case BottomBarEnum.Remixiconslin:
        return AppRoutes.feechallanPage;
      case BottomBarEnum.File:
        return AppRoutes.tentativeStudyPlanPage;
      case BottomBarEnum.Save:
        return AppRoutes.coursefeedbackPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.registrationOneScreen:
        return RegistrationOnePage();
      case AppRoutes.transcriptPage:
        return TranscriptPage();
      case AppRoutes.feechallanPage:
        return FeechallanPage();
      case AppRoutes.tentativeStudyPlanPage:
        return TentativeStudyPlanPage();
      case AppRoutes.coursefeedbackPage:
        return CoursefeedbackPage();
      default:
        return DefaultWidget();
    }
  }
}
