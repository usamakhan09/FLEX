import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flex2/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);
  final User? user = FirebaseAuth.instance.currentUser;
  var userData = Map<String, dynamic>().obs;
  Rx<HomeModel> homeModelObj;
  Stream<DocumentSnapshot<Map<String, dynamic>>>? userDoc;
  @override
  void onReady() async {
  
    
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
