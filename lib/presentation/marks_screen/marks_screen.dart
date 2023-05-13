import 'package:flex2/presentation/coursefeedback_page/coursefeedback_page.dart';
import 'package:flex2/presentation/feechallan_page/feechallan_page.dart';
import 'package:flex2/presentation/home_page/home_page.dart';
import 'package:flex2/presentation/transcript_page/transcript_page.dart';

import '../marks_screen/widgets/marks_item_widget.dart';
import '../tentative_study_plan_page/tentative_study_plan_page.dart';
import 'controller/marks_controller.dart';
import 'models/marks_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flex2/widgets/custom_drop_down.dart';
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MarksScreen extends GetWidget<MarksController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                height: getVerticalSize(103),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  CustomAppBar(
                      height: getVerticalSize(98),
                      title: Padding(
                          padding: getPadding(left: 20, top: 59, bottom: 2),
                          child: Row(children: [
                            AppbarSubtitle(text: "lbl_marks".tr),
                            AppbarSubtitle(
                                text: "lbl_attendance".tr,
                                margin: getMargin(left: 29),
                                onTap: onTapAttendance1)
                          ])),
                      styleType: Style.bgFillLightblueA700),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtRegistration();
                          },
                          child: Padding(
                              padding: getPadding(right: 8, bottom: 4),
                              child: Text("lbl_registration".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular24)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                          width: getHorizontalSize(93),
                          child: Divider(
                              height: getVerticalSize(5),
                              thickness: getVerticalSize(5),
                              color: ColorConstant.whiteA700,
                              indent: getHorizontalSize(18))))
                ])),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(
                            left: 21, top: 24, right: 19, bottom: 35),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Obx(()=> CustomDropDown(
                                  width: getHorizontalSize(400),
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 23, right: 19),
                                      // decoration: BoxDecoration(
                                      //     color:
                                      //         ColorConstant.black900),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "COURSE NAME".tr,
                                  items: controller
                                      .marksModelObj.value.dropdownItemList.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                            
                            ),
                             
                             Obx(()=> CustomTextFormField(
                                readonly: true,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.courseheadingController,
                                  hintText: controller.headingTxt.value,
                                  margin: getMargin(top: 13),
                                  variant: TextFormFieldVariant.FillTeal50,
                                  padding: TextFormFieldPadding.PaddingAll18,
                                  fontStyle:
                                      TextFormFieldFontStyle.PoppinsMedium18),
                             
                             ),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 17),
                                  color: ColorConstant.gray50,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: ColorConstant.indigo100,
                                          width: getHorizontalSize(1)),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: 
                                  Container(
                                      height: getVerticalSize(652),
                                      width: getHorizontalSize(385),
                                      padding: getPadding(
                                          left: 12,
                                          top: 10,
                                          right: 12,
                                          bottom: 10),
                                      decoration: AppDecoration.outlineIndigo100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                          
                                            SingleChildScrollView(
                                              child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: 
                                                
                                                      Column(
                                                        children: [
                                                          
                                                    Column(
                                                      children: [
                                                          CustomTextFormField(
                                              readonly: true,
                                                width: getHorizontalSize(360),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .markslistController,
                                                hintText: "lbl_assignment".tr,
                                                variant: TextFormFieldVariant
                                                    .OutlineIndigo100_1,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll18,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsMedium16,
                                                alignment: Alignment.topCenter),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 1,
                                                                top: 10,
                                                               ),
                                                            padding: getPadding(
                                                                left: 11,
                                                               
                                                                right: 11,
                                                                bottom: 5),
                                                            decoration: AppDecoration
                                                                .outlineGray400
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Obx(() =>
                                                                ListView.separated(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap: true,
                                                                    separatorBuilder:
                                                                        (context, index) {
                                                                      return SizedBox(
                                                                          height:
                                                                              getVerticalSize(
                                                                                  4));
                                                                    },
                                                                    itemCount: controller
                                                                        .marksModelObj
                                                                        .value
                                                                        .assignmentmarksItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      MarksItemModel
                                                                          model =
                                                                          controller
                                                                              .marksModelObj
                                                                              .value
                                                                              .assignmentmarksItemList[index];
                                                                      return MarksItemWidget(
                                                                          model);
                                                                    })
                                                                    )
                                                                    ),
                                                      ],
                                                    ),
                                                     Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                          CustomTextFormField(
                                              readonly: true,
                                                width: getHorizontalSize(360),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .markslistController,
                                                hintText: "Sessional I".tr,
                                                variant: TextFormFieldVariant
                                                    .OutlineIndigo100_1,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll18,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsMedium16,
                                                alignment: Alignment.topCenter),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 1,
                                                                top: 10,
                                                               ),
                                                            padding: getPadding(
                                                                left: 11,
                                                               
                                                                right: 11,
                                                                bottom: 5),
                                                            decoration: AppDecoration
                                                                .outlineGray400
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Obx(() =>
                                                                ListView.separated(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap: true,
                                                                    separatorBuilder:
                                                                        (context, index) {
                                                                      return SizedBox(
                                                                          height:
                                                                              getVerticalSize(
                                                                                  4));
                                                                    },
                                                                    itemCount: controller
                                                                        .marksModelObj
                                                                        .value
                                                                        .sessional1
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      MarksItemModel
                                                                          model =
                                                                          controller
                                                                              .marksModelObj
                                                                              .value
                                                                              .sessional1[index];
                                                                      return MarksItemWidget(
                                                                          model);
                                                                    })
                                                                    )
                                                                    ),
                                                      ],
                                                    ),
                                                   Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                          CustomTextFormField(
                                              readonly: true,
                                                width: getHorizontalSize(360),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .markslistController,
                                                hintText: "Sessional II".tr,
                                                variant: TextFormFieldVariant
                                                    .OutlineIndigo100_1,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll18,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsMedium16,
                                                alignment: Alignment.topCenter),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 1,
                                                                top: 10,
                                                               ),
                                                            padding: getPadding(
                                                                left: 11,
                                                               
                                                                right: 11,
                                                                bottom: 5),
                                                            decoration: AppDecoration
                                                                .outlineGray400
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Obx(() =>
                                                                ListView.separated(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap: true,
                                                                    separatorBuilder:
                                                                        (context, index) {
                                                                      return SizedBox(
                                                                          height:
                                                                              getVerticalSize(
                                                                                  4));
                                                                    },
                                                                    itemCount: controller
                                                                        .marksModelObj
                                                                        .value
                                                                        .sessional2
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      MarksItemModel
                                                                          model =
                                                                          controller
                                                                              .marksModelObj
                                                                              .value
                                                                              .sessional2[index];
                                                                      return MarksItemWidget(
                                                                          model);
                                                                    })
                                                                    )
                                                                    ),
                                                      ],
                                                    ),
                                                 
                                                    Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                          CustomTextFormField(
                                              readonly: true,
                                                width: getHorizontalSize(360),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .markslistController,
                                                hintText: "Final".tr,
                                                variant: TextFormFieldVariant
                                                    .OutlineIndigo100_1,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll18,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsMedium16,
                                                alignment: Alignment.topCenter),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 1,
                                                                top: 10,
                                                               ),
                                                            padding: getPadding(
                                                                left: 11,
                                                               
                                                                right: 11,
                                                                bottom: 5),
                                                            decoration: AppDecoration
                                                                .outlineGray400
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Obx(() =>
                                                                ListView.separated(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap: true,
                                                                    separatorBuilder:
                                                                        (context, index) {
                                                                      return SizedBox(
                                                                          height:
                                                                              getVerticalSize(
                                                                                  4));
                                                                    },
                                                                    itemCount: controller
                                                                        .marksModelObj
                                                                        .value
                                                                        .finalmarks
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      MarksItemModel
                                                                          model =
                                                                          controller
                                                                              .marksModelObj
                                                                              .value
                                                                              .finalmarks[index];
                                                                      return MarksItemWidget(
                                                                          model);
                                                                    })
                                                                    )
                                                                    ),
                                                      ],
                                                    ),
                                                         
                                                        ],
                                                      ),
                                                   
                                                 
                                                          
                                                           
                                                              ),
                                            ),
                                         
                                         
                                          
                                          ])
                                          )
                                     
                                     
                                          ),
                              
                              
                              //         CustomDropDown(
                              // width:  getHorizontalSize(147),
                              // focusNode: FocusNode(),
                              // icon: Container(
                              //     margin: getMargin(left: 23, right: 19),
                              //     // decoration: BoxDecoration(
                              //     //     color:
                              //     //         ColorConstant.black900),
                              //     child: CustomImageView(
                              //         svgPath: ImageConstant.imgArrowdown)),
                              // hintText: "COURSE NAME".tr,
                              // items: controller
                              //     .marksModelObj.value.fallDropdownItemList,
                              // onChanged: (value) {
                              //   controller.onFallSelected(value);
                              // }),
                              
                              CustomTextFormField(
                                  readonly: true,
                                  width: getHorizontalSize(147),
                                  focusNode: FocusNode(),
                                  // controller: controller.fallCounterController,
                                  hintText: "lbl_fall_2021".tr,
                                  margin: getMargin(top: 19, right: 1),
                                  variant:
                                      TextFormFieldVariant.OutlineWhiteA700,
                                  padding: TextFormFieldPadding.PaddingT10,
                                  fontStyle:
                                      TextFormFieldFontStyle.PoppinsMedium20,
                                  textInputAction: TextInputAction.none,
                                  alignment: Alignment.centerRight,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 24,
                                          top: 21,
                                          right: 8,
                                          bottom: 21),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgReply)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(50)))
                            ]))))
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

  onTapAttendance1() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }

  onTapTxtRegistration() {
    Get.toNamed(AppRoutes.registrationOneContainerScreen);
  }
}
