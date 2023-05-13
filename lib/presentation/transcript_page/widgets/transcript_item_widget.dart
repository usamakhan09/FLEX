import '../controller/transcript_controller.dart';
import '../models/transcript_item_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TranscriptItemWidget extends StatelessWidget {
  TranscriptItemWidget(this.transcriptItemModelObj);

  TranscriptItemModel transcriptItemModelObj;

  var controller = Get.find<TranscriptController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: 
            Text(
              transcriptItemModelObj.codeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
          
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: Text(
              transcriptItemModelObj.coursenameTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child:
             Text(
              transcriptItemModelObj.sectionTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
          
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child:
            Text(
              transcriptItemModelObj.crdhrsTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
          
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 6,
            bottom: 1,
          ),
          child: 
             Text(
              transcriptItemModelObj.gradeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
            ),
          
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 7,
            bottom: 1,
          ),
          child: 
            Text(
              transcriptItemModelObj.pointsTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
          
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            left: 6,
            top: 1,
          ),
          child: 
             Text(
              transcriptItemModelObj.typeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium12,
          
          ),
        ),
      ],
    );
  }
}
