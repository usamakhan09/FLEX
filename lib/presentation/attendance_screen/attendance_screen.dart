import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'controller/attendance_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/tentative_study_plan_page/tentative_study_plan_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';
import 'package:flex2/widgets/app_bar/appbar_title.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flex2/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends GetWidget<AttendanceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                height: getVerticalSize(98),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  CustomAppBar(
                      height: getVerticalSize(98),
                      title: Padding(
                          padding: getPadding(left: 20, top: 59, bottom: 2),
                          child: Row(children: [
                            AppbarSubtitle(
                                text: "lbl_marks".tr, onTap: onTapMarks1),
                            AppbarSubtitle(
                                text: "lbl_attendance".tr,
                                margin: getMargin(left: 29))
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
                                  style: AppStyle.txtPoppinsRegular24))))
                ])),
            Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    // height: 70,
                    width: getHorizontalSize(262),
                    child: Divider(
                        height: getVerticalSize(5),
                        thickness: getVerticalSize(5),
                        color: ColorConstant.whiteA700,
                        indent: getHorizontalSize(120)))),
            CustomDropDown(
                width: getHorizontalSize(300),
                focusNode: FocusNode(),
                icon: Container(
                    margin: getMargin(left: 23, right: 19),
                    // decoration:
                    //     BoxDecoration(color: ColorConstant.black900),
                    child:
                        CustomImageView(svgPath: ImageConstant.imgArrowdown)),
                hintText: "lbl_course_code2".tr,
                margin: getMargin(top: 18),
                items: controller.attendanceModelObj.value.dropdownItemList,
                onChanged: (value) {
                  controller.onSelected(value);
                }),
            Spacer(),
            CircularPercentIndicator(
              progressColor: ColorConstant.greenA200,
              radius: 100.0,
              lineWidth: 20.0,
              animation: true,
              percent: 0.8,
              center: new Text(
                "80.0%",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: ColorConstant.greenA200),
              ),
              footer: Text("msg_attandance_record".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold24Black900),
            ),
            Spacer()
            // Container(
            //     height: getSize(200),
            //     width: getSize(200),
            //     margin: getMargin(top: 150),
            //     child:
            //         Stack(alignment: Alignment.topCenter, children: [
            //       Align(
            //           alignment: Alignment.center,
            //           child: Container(
            //               height: getSize(200),
            //               width: getSize(200),
            //               decoration: BoxDecoration(
            //                   color: ColorConstant.greenA200,
            //                   borderRadius: BorderRadius.circular(
            //                       getHorizontalSize(75))))),

            //       Align(
            //           alignment: Alignment.topCenter,
            //           child: Center(
            //             child: Text("lbl_85".tr,
            //                 overflow: TextOverflow.ellipsis,
            //                 textAlign: TextAlign.left,
            //                 style: AppStyle.txtRobotoBold24.copyWith(color: Colors.white)),
            //           ))
            //     ])),
            ,
            SizedBox(
              height: 120,
            )
            // Padding(
            //     padding: getPadding(top: 42, bottom: 5),
            //     child: Text("msg_attandance_record".tr,
            //         overflow: TextOverflow.ellipsis,
            //         textAlign: TextAlign.left,
            //         style: AppStyle.txtRobotoBold24Black900))
          ])),
      // bottomNavigationBar:
      //     CustomBottomBar(onChanged: (BottomBarEnum type) {
      //   Get.toNamed(getCurrentRoute(type), id: 1);
      // })
    ));
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

  onTapMarks1() {
    Get.toNamed(AppRoutes.marksPage);
  }

  onTapTxtRegistration() {
    Get.toNamed(AppRoutes.registrationOneContainerScreen);
  }
}
