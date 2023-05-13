import 'controller/feechallan_controller.dart';
import 'models/feechallan_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flex2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FeechallanPage extends StatelessWidget {
  FeechallanController controller =
      Get.put(FeechallanController(FeechallanModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(98),
                title: AppbarSubtitle(
                    text: "lbl_fee_chalan".tr, margin: getMargin(left: 20)),
                actions: [
                  AppbarCircleimage(
                      onTap: () {
                        Get.toNamed(AppRoutes.profileScreen);
                      },
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 20, top: 23, right: 20, bottom: 25))
                ],
                styleType: Style.bgFillLightblueA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 20, right: 25, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(482),
                          width: getHorizontalSize(370),
                          margin: getMargin(left: 6),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(left: 1),
                                    padding: getPadding(
                                        left: 13,
                                        top: 51,
                                        right: 13,
                                        bottom: 51),
                                    decoration: AppDecoration.fillBlue100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 45),
                                              child: Row(children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 2),
                                                    child: Text("lbl_amount".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 183),
                                                    child: Obx(()=> Text("${controller.courses.value.amount}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14)))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(
                                                children: [
                                                  Text("lbl_due_date".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                          Spacer(),
                                                          Padding(
                                                    padding:
                                                        getPadding(left: 183),
                                                    child:Obx(()=> Text("${controller.courses.value.dueDate}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14)))
                                                ],
                                              )),
                                          Padding(
                                              padding: getPadding(top: 25),
                                              child: Row(
                                                children: [
                                                  Text("lbl_status".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                          Spacer(),

                                                          Obx(()=> Text("${controller.courses.value.status}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                                ],
                                              )),
                                          Padding(
                                              padding: getPadding(top: 25),
                                              child: Row(
                                                children: [
                                                  Text("lbl_generated_on".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                          Spacer(),

                                                          Obx(()=> Text("${controller.courses.value.generatedOn}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                                ],
                                              )),
                                          Container(
                                              width: getHorizontalSize(96),
                                              margin: getMargin(top: 26),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                children: [
                                                  Text(
                                                      "msg_print_challan_for".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                          
                                                          // Spacer(),

                                                          Obx(()=> Text("                         ${controller.courses.value.printChallan}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                                ],
                                              )),
                                          Container(
                                              width: getHorizontalSize(110),
                                              margin:
                                                  getMargin(left: 3, top: 48),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                
                                                children: [
                                                  Text(
                                                      "msg_kuickpay_payment".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                          // Spacer(),

                                                          Obx(()=> Text("                                ${controller.courses.value.quickPaymentDetail}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                                ],
                                              )),
                                          Container(
                                              width: getHorizontalSize(87),
                                              margin:
                                                  getMargin(top: 40, bottom: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_online_paymet_through"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),

                                                          Obx(()=> Text("                           ${controller.courses.value.onlinePaymentThroughNift}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                                ],
                                              ))
                                        
                                        
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 78),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 125),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 173),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 213),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 190),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 121),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 42),
                                    child: SizedBox(
                                        width: getHorizontalSize(368),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900))))
                          ])),
                      Padding(
                          padding: getPadding(left: 56, top: 43, bottom: 5),
                          child: Row(children: [
                            CustomButton(
                                height: getVerticalSize(46),
                                width: getHorizontalSize(116),
                                text: "lbl_details".tr,
                                fontStyle: ButtonFontStyle.PoppinsBold16,
                                onTap: onTapDetails),
                            CustomButton(
                                height: getVerticalSize(46),
                                width: getHorizontalSize(115),
                                text: "lbl_print".tr,
                                margin: getMargin(left: 20),
                                fontStyle: ButtonFontStyle.PoppinsBold16)
                          ]))
                    ]))));
  }

  onTapDetails() {
    Get.toNamed(AppRoutes.feechallanOneScreen);
  }
}
