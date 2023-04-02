import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/change_password_screen/models/change_password_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ChangePasswordController extends GetxController {
  TextEditingController logintextinputController = TextEditingController();

  TextEditingController logintextinputOneController = TextEditingController();

  TextEditingController logintextinputTwoController = TextEditingController();

  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    logintextinputController.dispose();
    logintextinputOneController.dispose();
    logintextinputTwoController.dispose();
  }
}
