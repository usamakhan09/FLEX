import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/tentative_study_plan_page/tentative_study_plan_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';

import 'controller/registration_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends GetWidget<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(99),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(99),
                                    title: Padding(
                                        padding: getPadding(
                                            left: 20, top: 60, bottom: 2),
                                        child: Row(children: [
                                          AppbarSubtitle(text: "lbl_marks".tr),
                                          AppbarSubtitle(
                                              text: "lbl_attendance".tr,
                                              margin: getMargin(left: 29),
                                              onTap: onTapAttendance2)
                                        ])),
                                    styleType: Style.bgFillLightblueA700),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtRegistration();
                                        },
                                        child: Padding(
                                            padding: getPadding(right: 8),
                                            child: Text("lbl_registration".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular24))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              width: getHorizontalSize(152),
                              child: Divider(
                                  height: getVerticalSize(5),
                                  thickness: getVerticalSize(5),
                                  color: ColorConstant.whiteA700,
                                  endIndent: getHorizontalSize(8)))),
                      Spacer(),
                      Container(
                          margin: getMargin(left: 23, right: 25),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ])),
                      Container(
                          margin: getMargin(left: 23, top: 15, right: 25),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ])),
                      Container(
                          margin: getMargin(left: 23, top: 15, right: 25),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ])),
                      Container(
                          margin: getMargin(left: 22, top: 15, right: 26),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ])),
                      Container(
                          margin: getMargin(left: 23, top: 15, right: 25),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ])),
                      Container(
                          margin: getMargin(
                              left: 23, top: 15, right: 25, bottom: 127),
                          padding: getPadding(
                              left: 20, top: 5, right: 20, bottom: 5),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 13),
                                child: Text("lbl_cs2009".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14)),
                            Container(
                                width: getHorizontalSize(146),
                                margin: getMargin(left: 44, top: 3, right: 94),
                                child: Text("msg_design_and_analysis".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14))
                          ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

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

  onTapAttendance2() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }

  onTapTxtRegistration() {
    Get.toNamed(AppRoutes.registrationOneContainerScreen);
  }
}
