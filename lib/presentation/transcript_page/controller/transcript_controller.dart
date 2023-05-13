import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/transcript_page/models/transcript_model.dart';

import '../models/transcript_item_model.dart';

class TranscriptController extends GetxController {
  TranscriptController(this.transcriptModelObj);
  var listOfmarks = <Transcript>[].obs;

  Rx<TranscriptModel> transcriptModelObj=TranscriptModel().obs;

  @override
  void onReady() async{
    _fetchtranscript();
    super.onReady();
  }

  void _fetchtranscript() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('trascripts').get();

    final List<Transcript> listOfmarks1 = [];
    for (final document in querySnapshot.docs) {
      final course = Transcript.fromSnapshot(document);
      listOfmarks1.add(course);
      print(course);
    }

    listOfmarks.value = listOfmarks1;
    mylistPopulator();
  }

  mylistPopulator() {
    listOfmarks.value.forEach((element) {
      print(element);
      var model = TranscriptItemModel(
          codeTxt:"${element.code}",
          coursenameTxt: "${element.courseName}",
          sectionTxt: element.section,
          crdhrsTxt: "${element.crdhrs}",
          gradeTxt: element.grade,
          pointsTxt: element.points,
          typeTxt: element.type);
      transcriptModelObj.value.transcriptItemList.add(model);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
