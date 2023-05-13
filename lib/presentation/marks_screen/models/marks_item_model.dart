import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MarksItemModel {
  MarksItemModel({required this.assignmentTxt, required this.weightageTxt,required  this.obtainmarksTxt,
      required this.totalmarksTxt,
      this.id});
  Rx<String> assignmentTxt = Rx("lbl_assignment".tr);

  Rx<String> weightageTxt = Rx("lbl_weightage".tr);

  Rx<String> obtainmarksTxt = Rx("lbl_obtain_marks".tr);

  Rx<String> totalmarksTxt = Rx("lbl_total_marks".tr);

  String? id = "";
}

class Marks {
  var isSelectedSwitch = false.obs;
  final String name;
  final int obtainedMarks;
  final int totalMarks;
  final dynamic weightage;
  final int semester;
  final String type;
  final String userId;
  final Timestamp createdAt;

  Marks({
    required this.name,
    required this.obtainedMarks,
    required this.totalMarks,
    required this.weightage,
    required this.semester,
    required this.type,
    required this.userId,
    required this.createdAt,
  });

  factory Marks.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return Marks(
      name: data['name'],
      obtainedMarks: data['obtainedMarks'] ?? 0,
      totalMarks: data['totalMarks'] ?? 0,
      weightage: data['weightage'] ?? 0,
      semester: data['semester'] ?? 0,
      type: data['type'] ?? '',
      userId: data['userId'] ?? '',
      createdAt: data['created_at'] ?? Timestamp.now(),
    );
  }
}

