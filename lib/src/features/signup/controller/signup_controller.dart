// sign up controller
import 'package:flutter/material.dart';
import 'package:jirani_mobile_app/services/firebase/authentication/firebase_auth.dart';

class SignUpController {
  // we will need firebase authentication
  FirebaseAuthService firebaseAuth = FirebaseAuthService();
  // create a fucnction that will hold the logic for user sign up.
  //TextField controller to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
}
