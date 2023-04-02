import 'controller/sign_in_controller.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/core/utils/validation_functions.dart';
import 'package:flex2/widgets/custom_button.dart';
import 'package:flex2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: ColorConstant.lightBlueA700,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(left: 34, top: 150, right: 38),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: getVerticalSize(119),
                                width: getHorizontalSize(318)),
                            // Spacer(),
                            SizedBox(
                              height: 100,
                            ),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.logintextinputController,
                                hintText: "lbl_roll_no".tr,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 15,
                                        top: 21,
                                        right: 10,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgUser)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60))),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller:
                                    controller.logintextinputOneController,
                                hintText: "lbl_password".tr,
                                margin: getMargin(top: 43),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 15,
                                        top: 21,
                                        right: 10,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: true),
                            CustomButton(
                                height: getVerticalSize(50),
                                text: "lbl_sign_in".tr,
                                margin: getMargin(top: 51),
                                onTap: onTapSignin),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtForgetpassword();
                                },
                                child: Padding(
                                    padding: getPadding(top: 96, bottom: 74),
                                    child: Text("lbl_forget_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ])),
                ))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtForgetpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }
}
