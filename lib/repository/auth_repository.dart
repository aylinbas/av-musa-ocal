// import 'package:av_musa_ocal/helper/show_alert_dialog.dart';
// import 'package:av_musa_ocal/screen/feature/verification/verification_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AuthRepository {
//   final FirebaseAuth _auth;
//   final FirebaseFirestore _fireStore;

//   AuthRepository({FirebaseAuth? auth, FirebaseFirestore? fireStore})
//       : _auth = auth ?? FirebaseAuth.instance,
//         _fireStore = fireStore ?? FirebaseFirestore.instance;

//   Future<void> sendSmsCode(
//       {required BuildContext context, required String phone}) async {
//     try {
//       await _auth.verifyPhoneNumber(
//           phoneNumber: phone,
//           verificationCompleted: (PhoneAuthCredential credential) async {
//             await _auth.signInWithCredential(credential);
//           },
//           verificationFailed: (error) {
//             showAlertDialog(context: context, message: error.toString());
//           },
//           codeSent: (smsCode, resendSmsCode) {
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(
//                     builder: (BuildContext context) => VerificationPage(
//                           verificationId: smsCode,
//                           phoneNumber: phone,
//                         )),
//                 ModalRoute.withName(
//                     '/') // Replace this with your root screen's route name (usually '/')
//                 );
//           },
//           codeAutoRetrievalTimeout: (String smsCode) {});
//     } on FirebaseAuth catch (e) {
//       showAlertDialog(context: context, message: e.toString());
//     }
//   }
// }
