import 'package:get/get.dart';

class ListcodeItemModel {
  ListcodeItemModel(this.codeTxt, this.coursenameTxt, this.chTxt, this.typeTxt,
      {this.id});
  Rx<String> codeTxt;

  Rx<String> coursenameTxt;

  Rx<String> chTxt;

  Rx<String> typeTxt;

  String? id = "";
}
