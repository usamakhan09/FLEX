import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController logintextinputController = TextEditingController();

  TextEditingController logintextinputOneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    logintextinputController.dispose();
    logintextinputOneController.dispose();
  }
}
