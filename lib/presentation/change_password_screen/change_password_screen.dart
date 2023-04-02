import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';

import 'controller/change_password_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/core/utils/validation_functions.dart';
import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/tentative_study_plan_page/tentative_study_plan_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flex2/widgets/custom_button.dart';
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(99),
          title: Container(
              height: getVerticalSize(36),
              width: getHorizontalSize(222),
              margin: getMargin(left: 20, top: 41, bottom: 21),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                AppbarSubtitle(text: "lbl_change_password".tr),
                AppbarSubtitle(text: "lbl_change_password".tr)
              ])),
          actions: [
            Container(
                height: getSize(50),
                width: getSize(50),
                margin: getMargin(left: 20, top: 24, right: 20, bottom: 25),
                child: Stack(alignment: Alignment.center, children: [
                  AppbarCircleimage(imagePath: ImageConstant.imgEllipse450x50),
                  AppbarCircleimage(imagePath: ImageConstant.imgEllipse4)
                ]))
          ],
          styleType: Style.bgFillLightblueA700),
      body: Form(
          key: _formKey,
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 33, top: 50, right: 33, bottom: 50),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.logintextinputController,
                    hintText: "lbl_currentpassword".tr,
                    margin: getMargin(left: 6),
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 21, right: 10, bottom: 21),
                        child: CustomImageView(svgPath: ImageConstant.imgLock)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(60)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true),
                CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.logintextinputOneController,
                    hintText: "lbl_new_password".tr,
                    margin: getMargin(left: 6, top: 45),
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 21, right: 10, bottom: 21),
                        child: CustomImageView(svgPath: ImageConstant.imgLock)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(60)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true),
                CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.logintextinputTwoController,
                    hintText: "msg_confirm_new_password".tr,
                    margin: getMargin(left: 6, top: 45),
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 21, right: 10, bottom: 21),
                        child: CustomImageView(svgPath: ImageConstant.imgLock)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(60)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true),
                CustomButton(
                    height: getVerticalSize(50),
                    text: "lbl_save".tr,
                    margin: getMargin(left: 3, top: 94, right: 3),
                    onTap: onTapSave),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      onTapTxtGoback();
                    },
                    child: Padding(
                        padding: getPadding(bottom: 74),
                        child: Text("lbl_go_back".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Black900)))
              ]))),
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

  onTapSave() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtGoback() {
    Get.toNamed(AppRoutes.profileScreen);
  }
}
