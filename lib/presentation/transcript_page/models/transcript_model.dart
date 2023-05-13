import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'transcript_item_model.dart';

class TranscriptModel {
  RxList<TranscriptItemModel> transcriptItemList = [
    TranscriptItemModel(
        codeTxt: "lbl_code".tr,
        coursenameTxt: "lbl_course_name".tr,
        sectionTxt: "lbl_section".tr,
        crdhrsTxt: "lbl_crdhrs".tr,
        gradeTxt: "lbl_grade".tr,
        pointsTxt: "lbl_points".tr,
       typeTxt: "lbl_type".tr),
        
  ].obs;
  // RxList.generate(2, (index) => TranscriptItemModel());
}


class Transcript {
  final double cgpa;
  final double sgpa;
  final dynamic code;
  final String courseName;
  final int cr_Att;
  final int cr_ernd;
  final int crdhrs;
  final String grade;
  final String points;
  final String section;
  final int semester;
  final String semesterName;
  final String type;

  Transcript({
    required this.cgpa,
    required this.sgpa,
    required this.code,
    required this.courseName,
    required this.cr_Att,
    required this.cr_ernd,
    required this.crdhrs,
    required this.grade,
    required this.points,
    required this.section,
    required this.semester,
    required this.semesterName,
    required this.type,
  });

  factory Transcript.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return Transcript(
      cgpa: data['CGPA'],
      sgpa: data['SGPA'],
      code: data['code'],
      courseName: data['courseName'],
      cr_Att: data['cr_Att'],
      cr_ernd: data['cr_ernd'],
      crdhrs: data['crdhrs'],
      grade: data['grade'],
      points: data['points'],
      section: data['section'],
      semester: data['semester'],
      semesterName: data['semesterName'],
      type: data['type'],
    );
  }
}
