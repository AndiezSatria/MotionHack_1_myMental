import 'package:care_me/ui/pages/pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../controller/controller.dart';

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
GoogleSignIn googleSign = GoogleSignIn();

List<Widget> listMainPages = [
  HomePage(),
  Placeholder(),
  Placeholder(),
  Placeholder(),
];
List<Widget> listSlider = [
  Image.asset("assets/images/slideshow.png"),
  Image.asset("assets/images/slideshow.png"),
  Image.asset("assets/images/slideshow.png"),
  Image.asset("assets/images/slideshow.png"),
  Image.asset("assets/images/slideshow.png"),
  Image.asset("assets/images/slideshow.png"),
];
