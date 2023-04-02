import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';

import 'controller/coursefeedback_one_controller.dart';
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
import 'package:flex2/widgets/custom_button.dart';
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CoursefeedbackOneScreen extends GetWidget<CoursefeedbackOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            99,
          ),
          title: AppbarSubtitle(
            text: "lbl_course_feedback".tr,
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
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            top: 56,
            right: 30,
            bottom: 56,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.group374Controller,
                hintText: "msg_write_your_feedback".tr,
                variant: TextFormFieldVariant.OutlineGray400,
                padding: TextFormFieldPadding.PaddingT111,
                fontStyle: TextFormFieldFontStyle.PoppinsMedium12,
                textInputAction: TextInputAction.done,
                maxLines: 12,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                height: getVerticalSize(
                  50,
                ),
                width: getHorizontalSize(
                  100,
                ),
                text: "lbl_submit".tr,
                margin: getMargin(
                  top: 33,
                  right: 1,
                  bottom: 5,
                ),
                variant: ButtonVariant.FillBlack90001,
                fontStyle: ButtonFontStyle.PoppinsSemiBold16,
              ),
            ],
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
