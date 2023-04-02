import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';

import 'controller/registration_two_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/tentative_study_plan_page/tentative_study_plan_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';
import 'package:flex2/widgets/app_bar/appbar_title.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class RegistrationTwoScreen extends GetWidget<RegistrationTwoController> {
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
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                                                AppbarTitle(
                                                    text: "lbl_marks".tr),
                                                AppbarTitle(
                                                    text: "lbl_attendance".tr,
                                                    margin: getMargin(left: 29),
                                                    onTap: onTapAttendance3)
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
                                                  child: Text(
                                                      "lbl_registration".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular24))))
                                    ])),
                            SizedBox(
                                width: getHorizontalSize(152),
                                child: Divider(
                                    height: getVerticalSize(5),
                                    thickness: getVerticalSize(5),
                                    color: ColorConstant.whiteA700,
                                    endIndent: getHorizontalSize(8)))
                          ]),
                      Container(
                          margin: getMargin(
                              left: 20, top: 17, right: 18, bottom: 5),
                          padding: getPadding(
                              left: 10, top: 14, right: 10, bottom: 14),
                          decoration: AppDecoration.fillTeal50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 3),
                                    child: Text("lbl_coursecode".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold18)),
                                Padding(
                                    padding: getPadding(left: 12, bottom: 2),
                                    child: Text("lbl_course_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold18)),
                                Padding(
                                    padding: getPadding(left: 12, bottom: 3),
                                    child: Text("lbl_add".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold18)),
                                Padding(
                                    padding: getPadding(left: 21, top: 2),
                                    child: Text("lbl_drop".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold18))
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

  onTapAttendance3() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }

  onTapTxtRegistration() {
    Get.toNamed(AppRoutes.registrationOneScreen);
  }
}
