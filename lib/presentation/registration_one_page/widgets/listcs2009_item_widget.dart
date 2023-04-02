import '../controller/registration_one_controller.dart';
import '../models/listcs2009_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listcs2009ItemWidget extends StatelessWidget {
  Listcs2009ItemWidget(this.listcs2009ItemModelObj);

  Listcs2009ItemModel listcs2009ItemModelObj;

  var controller = Get.find<RegistrationOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 5,
        right: 8,
        bottom: 5,
      ),
      decoration: AppDecoration.fillTeal50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 13,
              bottom: 13,
            ),
            child: Text(
              "lbl_cs2009".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14,
            ),
          ),
          Container(
            width: getHorizontalSize(
              146,
            ),
            margin: getMargin(
              left: 44,
              top: 3,
            ),
            child: Text(
              "msg_design_and_analysis".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14,
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
                left: 36,
                top: 9,
                bottom: 9,
              ),
              value: listcs2009ItemModelObj.isSelectedSwitch.value,
              onChanged: (value) {
                listcs2009ItemModelObj.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
