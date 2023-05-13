import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class Course {
  var isSelectedSwitch = false.obs;
  final String name;
  final dynamic ch;
  final String code;
  final int semester;
  final dynamic type;
  // ... other course data fields

  Course({
    required this.ch,
    required this.code,
    required this.name,
    required this.semester,
    required this.type,

    // ... other course data fields
  });

  factory Course.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return Course(
        name: data['name'],
        ch: data['ch'] ?? 0,
        type: data['type'] ?? '',
        code: data['code'] ?? '',
        semester: data['semester'] ?? 0
        // ... other course data fields
        );
  }
}
