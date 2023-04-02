import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/profile_screen/models/profile_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    nameController.dispose();
  }
}
