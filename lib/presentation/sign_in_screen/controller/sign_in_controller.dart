import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

import '../../../auth.dart';

class SignInController extends GetxController {
  TextEditingController logintextinputController = TextEditingController();
  var isLoading = false.obs;

  TextEditingController logintextinputOneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }
  signIn()async{
    isLoading.value = true;
    print("${logintextinputController.text.trim()},${logintextinputOneController.text.trim()}");
    await Auth.instance.signInWithEmailAndPassword(logintextinputController.text.trim(),logintextinputOneController.text.trim());
    isLoading.value = false;
  }

  @override
  void onClose() {
    super.onClose();
    logintextinputController.dispose();
    logintextinputOneController.dispose();
  }
}
