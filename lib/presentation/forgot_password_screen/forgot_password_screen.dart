import 'controller/forgot_password_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/core/utils/validation_functions.dart';
import 'package:flex2/widgets/custom_button.dart';
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.lightBlueA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 34, top: 89, right: 34),
                    child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: getVerticalSize(119),
                              width: getHorizontalSize(318),
                              alignment: Alignment.center),
                          // Spacer(),
                          SizedBox(height: 50,),
                          Container(
                              margin: getMargin(left: 4),
                              decoration: AppDecoration.txtOutlineBlack9003f,
                              child: Text("lbl_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium20)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.logintextinputController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(left: 4, top: 44),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 15, top: 21, right: 10, bottom: 21),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstant.blueGray300,
                                          width: getHorizontalSize(1),
                                          strokeAlign: strokeAlignCenter)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCalculator)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_send".tr,
                              margin: getMargin(left: 4, top: 72),
                              onTap: ()async{
                                await controller.forgetpass();
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtBacktosignin();
                              },
                              child: Padding(
                                  padding: getPadding(
                                      left: 114, top: 95, bottom: 79),
                                  child: Text("lbl_back_to_sign_in".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))))
                        ])))));
  }

  onTapSend() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtBacktosignin() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
