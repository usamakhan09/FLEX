import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/widgets/app_bar/appbar_circleimage.dart';
import 'package:flex2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flex2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));
final User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            98,
          ),
          title: AppbarSubtitle(
            text: "lbl_home".tr,
            margin: getMargin(
              left: 20,
            ),
          ),
          actions: [
            AppbarCircleimage(
              onTap: () {
                Get.toNamed(AppRoutes.profileScreen);
              },
              imagePath: ImageConstant.imgEllipse4,
              margin: getMargin(
                left: 20,
                top: 23,
                right: 20,
                bottom: 25,
              ),
            ),
          ],
          styleType: Style.bgFillLightblueA700,
        ),
        body:StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(user?.uid)
          .snapshots(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        final userData = snapshot.data?.data();
        // return Text('Hello ${snapshot.data?['email']}');
        return Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 37,
            right: 20,
            bottom: 37,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 87,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        10,
                      ),
                      width: getSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 18,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.black900,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "msg_university_information".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_roll_number".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                       "${snapshot.data?['rollNo']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 3,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_batch".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 63,
                      ),
                      child: Text(
                       "${snapshot.data?['batch']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
              
               Padding(
                padding: getPadding(
                  left: 25,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      "Section",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                       "${snapshot.data?['section']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 25,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      "Degree",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                       "${snapshot.data?['degree']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 25,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      "Campus".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                       "${snapshot.data?['campus']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 25,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      "Status",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Text(
                       "${snapshot.data?['status']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: getPadding(
                  top: 8,
                  right: 115,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        10,
                      ),
                      width: getSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.black900,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "msg_student_information".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 21,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_name".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 61,
                      ),
                      child: Text(
                       "${snapshot.data?['studentName']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_fathername".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['fatherName']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['gender']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Date of birth",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['dob']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "CNIC",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['studentCNIC']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['email']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Blood Group",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['bloodGroup']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: getPadding(
                  left: 22,
                  top: 3,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Nationality",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                      "  ${snapshot.data?['nationality']}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        );

      },
    )
  
        //  Container(
        //   width: double.maxFinite,
        //   padding: getPadding(
        //     left: 20,
        //     top: 37,
        //     right: 20,
        //     bottom: 37,
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding: getPadding(
        //           right: 87,
        //         ),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               height: getSize(
        //                 10,
        //               ),
        //               width: getSize(
        //                 10,
        //               ),
        //               margin: getMargin(
        //                 top: 7,
        //                 bottom: 18,
        //               ),
        //               decoration: BoxDecoration(
        //                 color: ColorConstant.black900,
        //                 borderRadius: BorderRadius.circular(
        //                   getHorizontalSize(
        //                     5,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 12,
        //               ),
        //               child: Text(
        //                 "msg_university_information".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsBold24,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: getPadding(
        //           left: 25,
        //           top: 18,
        //         ),
        //         child: Row(
        //           children: [
        //             Text(
        //               "lbl_roll_number".tr,
        //               overflow: TextOverflow.ellipsis,
        //               textAlign: TextAlign.left,
        //               style: AppStyle.txtPoppinsMedium18,
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 6,
        //               ),
        //               child: Text(
        //                 "19k-1458".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsRegular18,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: getPadding(
        //           left: 25,
        //           top: 3,
        //         ),
        //         child: Row(
        //           children: [
        //             Text(
        //               "lbl_batch".tr,
        //               overflow: TextOverflow.ellipsis,
        //               textAlign: TextAlign.left,
        //               style: AppStyle.txtPoppinsMedium18,
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 63,
        //               ),
        //               child: Text(
        //                 "lbl_2019".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsRegular18,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: getPadding(
        //           top: 8,
        //           right: 115,
        //         ),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               height: getSize(
        //                 10,
        //               ),
        //               width: getSize(
        //                 10,
        //               ),
        //               margin: getMargin(
        //                 top: 10,
        //                 bottom: 15,
        //               ),
        //               decoration: BoxDecoration(
        //                 color: ColorConstant.black900,
        //                 borderRadius: BorderRadius.circular(
        //                   getHorizontalSize(
        //                     5,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 12,
        //               ),
        //               child: Text(
        //                 "msg_student_information".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsBold24,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: getPadding(
        //           left: 22,
        //           top: 21,
        //         ),
        //         child: Row(
        //           children: [
        //             Text(
        //               "lbl_name".tr,
        //               overflow: TextOverflow.ellipsis,
        //               textAlign: TextAlign.left,
        //               style: AppStyle.txtPoppinsMedium18,
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 61,
        //               ),
        //               child: Text(
        //                 "Usama Khan".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsRegular18,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: getPadding(
        //           left: 22,
        //           top: 3,
        //           bottom: 5,
        //         ),
        //         child: Row(
        //           children: [
        //             Text(
        //               "lbl_fathername".tr,
        //               overflow: TextOverflow.ellipsis,
        //               textAlign: TextAlign.left,
        //               style: AppStyle.txtPoppinsMedium18,
        //             ),
        //             Padding(
        //               padding: getPadding(
        //                 left: 8,
        //               ),
        //               child: Text(
        //                 "Faizan khan".tr,
        //                 overflow: TextOverflow.ellipsis,
        //                 textAlign: TextAlign.left,
        //                 style: AppStyle.txtPoppinsRegular18,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      
      
      ),
    );
  }
}
