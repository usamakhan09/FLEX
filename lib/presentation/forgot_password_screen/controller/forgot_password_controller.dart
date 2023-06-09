import 'package:flex2/auth.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController logintextinputController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  forgetpass() async {
    await Auth.instance.resetPassword(logintextinputController.text.trim());
    //  Get.toNamed(AppRoutes.signInScreen);
  }

  @override
  void onClose() {
    super.onClose();
    logintextinputController.dispose();
  }
}
