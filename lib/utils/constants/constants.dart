import 'package:care_me/ui/pages/pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../controller/controller.dart';
import '../../model/models.dart';

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
GoogleSignIn googleSign = GoogleSignIn();

List<Widget> listMainPages = [
  HomePage(),
  ActivityPage(),
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
List<TransactionEntity> dummyTransactionHistory = [
  TransactionEntity(
    amount: 70000,
    isSuccess: true,
    paymentMethod: TransactionPaymentMethod.GoPay,
    transactionType: TransactionType.Consultation,
  ),
  TransactionEntity(
    amount: 150000,
    isSuccess: true,
    paymentMethod: TransactionPaymentMethod.CreditCard,
    transactionType: TransactionType.Webinar,
  ),
  TransactionEntity(
    amount: 50000,
    isSuccess: true,
    paymentMethod: TransactionPaymentMethod.ShopeePay,
    transactionType: TransactionType.Medicine,
  ),
  TransactionEntity(
    amount: 300000,
    isSuccess: true,
    paymentMethod: TransactionPaymentMethod.PayPal,
    transactionType: TransactionType.Membership,
  ),
  TransactionEntity(
    amount: 120000,
    isSuccess: true,
    paymentMethod: TransactionPaymentMethod.Ovo,
    transactionType: TransactionType.Consultation,
  ),
];

List<ScheduleEntity> dummySchedule = [
  ScheduleEntity(
    title: "Hail Selena",
    time: "19:30",
    body: "Jangan lupain jadwal konsultasi virtual kamu ya",
    date: "19 Februari 2022",
  ),
  ScheduleEntity(
    title: "Hail Selena",
    time: "19:30",
    body: "Jangan lupain webinar “Anxiety” kamu ya !",
    date: "19 Februari 2022",
  ),
  ScheduleEntity(
    title: "Hail Selena",
    time: "19:30",
    body: "Jangan lupain jadwal konsultasi virtual kamu ya",
    date: "19 Februari 2022",
  ),
  ScheduleEntity(
    title: "Hail Selena",
    time: "19:30",
    body: "Jangan lupain jadwal konsultasi virtual kamu ya",
    date: "19 Februari 2022",
  ),
];
