import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';

import '../../auth.dart';
import 'controller/profile_controller.dart';
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
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
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
              width: getHorizontalSize(77),
              margin: getMargin(left: 20),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                AppbarSubtitle(text: "lbl_profile".tr),
                AppbarSubtitle(text: "lbl_profile".tr)
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
              padding: getPadding(left: 36, top: 58, right: 36, bottom: 58),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse4160x160,
                    height: getSize(160),
                    width: getSize(160),
                    radius: BorderRadius.circular(getHorizontalSize(80)),
                    margin: getMargin(top: 3)),
                CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.emailController,
                    hintText: "msg_19k_0327_nu_edu_pk".tr,
                    margin: getMargin(top: 60),
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                        margin:
                            getMargin(left: 9, top: 21, right: 12, bottom: 21),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstant.blueGray300,
                                width: getHorizontalSize(1),
                                strokeAlign: strokeAlignCenter)),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgCalculatorBlueGray300)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(60)),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    }),
                CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.nameController,
                    hintText: "lbl_jhon_doe".tr,
                    margin: getMargin(top: 27),
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 21, right: 6, bottom: 21),
                        child: CustomImageView(svgPath: ImageConstant.imgUser)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(60))),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      onTapTxtChangepassword();
                    },
                    child: Text("lbl_change_password".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium16Black900)),
                GestureDetector(
                    onTap: ()async {
                     await Auth.instance.signOut();
                     Get.toNamed(AppRoutes.signInScreen);
                    },
                    child: Padding(
                        padding: getPadding(top: 40),
                        child: Text("lbl_log_out".tr,
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

  onTapTxtChangepassword() {
    Get.toNamed(AppRoutes.changePasswordScreen);
  }

  onTapTxtLogout() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
