import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/transcript_page/models/transcript_model.dart';

class TranscriptController extends GetxController {
  TranscriptController(this.transcriptModelObj);

  Rx<TranscriptModel> transcriptModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
