import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/coursefeedback_one_screen/models/coursefeedback_one_model.dart';
import 'package:flex2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CoursefeedbackOneController extends GetxController {
  TextEditingController group374Controller = TextEditingController();

  Rx<CoursefeedbackOneModel> coursefeedbackOneModelObj =
      CoursefeedbackOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group374Controller.dispose();
  }
}
