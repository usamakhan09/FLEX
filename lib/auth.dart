import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get_storage/get_storage.dart';
class Auth extends GetxController {
  static Auth instance = Get.find();

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {

    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, initialScreen);
  }

  initialScreen(User? user) {
    print(user);
    if (user == null) {
      Get.offNamed(AppRoutes.signInScreen);
    } else {
      print('home page');

      // Get.offAll(() => DashboardContainerScreen());
     Get.toNamed(AppRoutes.homeContainerScreen);
    }
  }

  signInWithEmailAndPassword(String email, String pass,) async {
    // setState(() {
    //   _isLoading = true;
    // });
    try {
      var response=await auth.signInWithEmailAndPassword(email: email, password: pass);
      Fluttertoast.showToast(msg: "welcome to flex", gravity: ToastGravity.TOP);
      // print("object");
      // storagebox.write('id', id);
      // storagebox.write('type', type);
      // Get.toNamed(AppRoutes.dashboardContainerScreen);
      // Navigate to home screen or perform other actions after successful sign-in
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "user not found", gravity: ToastGravity.TOP);

        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "wrong password", gravity: ToastGravity.TOP);

        print('Wrong password provided for that user.');
      } else {
        Fluttertoast.showToast(msg: "${e.code}", gravity: ToastGravity.TOP);

        print(e.code);
      }
    } finally {
      // setState(() {
      //   _isLoading = false;
      // });
    }
  }
 resetPassword(String email) async {
  try {
    Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    await auth.sendPasswordResetEmail(email: email);
Get.back();
    Fluttertoast.showToast(msg: "Password reset email sent!", gravity: ToastGravity.TOP);
     Get.toNamed(AppRoutes.signInScreen);

  } on FirebaseAuthException catch (e) {
Get.back();

    if (e.code == 'user-not-found') {

      Fluttertoast.showToast(msg: "No user found for that email.", gravity: ToastGravity.TOP);

      print('No user found for that email.');
    } else {
      Fluttertoast.showToast(msg: "${e.code}", gravity: ToastGravity.TOP);
      print(e.code);
    }
  }
}
  Future<void> signOut() async {
    await auth.signOut();
  }
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // User? get currentUser => _firebaseAuth.currentUser;
  // Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  // Future<void> signInWithEmailAndPassword(String email, String password) async {
  //   await _firebaseAuth.signInWithEmailAndPassword(
  //       email: email, password: password);
  // }

  // Future<void> signOut() async {
  //   await _firebaseAuth.signOut();
  // }
}
