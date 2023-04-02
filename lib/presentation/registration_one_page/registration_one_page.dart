import '../registration_one_page/widgets/listcs2009_item_widget.dart';
import 'controller/registration_one_controller.dart';
import 'models/listcs2009_item_model.dart';
import 'models/registration_one_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationOnePage extends StatelessWidget {
  RegistrationOneController controller =
      Get.put(RegistrationOneController(RegistrationOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
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
                                                        left: 20,
                                                        top: 60,
                                                        bottom: 2),
                                                    child: Row(children: [
                                                      AppbarSubtitle(
                                                          text: "lbl_marks".tr,
                                                          onTap: onTapMarks),
                                                      AppbarSubtitle(
                                                          text: "lbl_attendance"
                                                              .tr,
                                                          margin: getMargin(
                                                              left: 29),
                                                          onTap:
                                                              onTapAttendance)
                                                    ])),
                                                styleType:
                                                    Style.bgFillLightblueA700),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding:
                                                        getPadding(right: 8),
                                                    child: Text(
                                                        "lbl_registration".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular24)))
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
                                margin: getMargin(left: 20, top: 17, right: 18),
                                padding: getPadding(
                                    left: 10, top: 14, right: 10, bottom: 14),
                                decoration: AppDecoration.fillTeal50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 3),
                                          child: Text("Course Code".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsBold18)),
                                      Spacer(),
                                      Padding(
                                          padding:
                                              getPadding(left: 12, bottom: 2),
                                          child: Text("lbl_course_name".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsBold18)),
                                      Spacer(),
                                      Padding(
                                          padding:
                                              getPadding(left: 12, bottom: 3),
                                          child: Text("lbl_add".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsBold18)),
                                      Spacer(),
                                      Padding(
                                          padding:
                                              getPadding(left: 0, bottom: 3),
                                          child: Text("/" + "lbl_drop".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsBold18))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 22, top: 20, right: 22),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(40));
                                    },
                                    itemCount: controller
                                        .registrationOneModelObj
                                        .value
                                        .listcs2009ItemList
                                        .length,
                                    itemBuilder: (context, index) {
                                      Listcs2009ItemModel model = controller
                                          .registrationOneModelObj
                                          .value
                                          .listcs2009ItemList[index];
                                      return Listcs2009ItemWidget(model);
                                    })))
                          ])
                    ]))));
  }

  onTapMarks() {
    Get.toNamed(AppRoutes.marksPage);
  }

  onTapAttendance() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }
}
