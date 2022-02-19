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
final RegExp regMoney = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');

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

List<PsychologEntity> dummyPsycholog = [
  PsychologEntity(
    id: 1,
    name: "Sarah Anadia Chelsea, M.Psi",
    experience: 5,
    alumni: "Universitas Indonesia",
    price: 70000,
    consultationDuration: 45,
    rating: 93,
  ),
  PsychologEntity(
    id: 2,
    name: "Frederic John Robert, M.Psi",
    experience: 7,
    alumni: "Universitas Gajah Mada",
    price: 120000,
    consultationDuration: 90,
    rating: 93,
  ),
  PsychologEntity(
    id: 3,
    name: "Sarah Anadia Chelsea, M.Psi",
    experience: 3,
    alumni: "Universitas Malaya",
    price: 100000,
    consultationDuration: 45,
    rating: 93,
  ),
  PsychologEntity(
    id: 4,
    name: "Elizabeth Olsen, M.Psi",
    experience: 9,
    alumni: "Universitas Negeri Sebelas Maret",
    price: 250000,
    consultationDuration: 120,
    rating: 93,
  ),
  PsychologEntity(
    id: 5,
    name: "Tom Holland, M.Psi",
    experience: 10,
    alumni: "Universitas Airlangga",
    price: 150000,
    consultationDuration: 60,
    rating: 93,
  ),
];

List<String> scheduleTime = [
  "09:00",
  "11:00",
  "17:00",
  "18:00",
  "19:00",
  "20:00",
];

List<MedicineEntity> dummyMedicine = [
  MedicineEntity(
    id: 1,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_1.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 2,
    name: "Clozaril 25 mg",
    price: 350000,
    imgAsset: "assets/images/med_2.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 3,
    name: "Haloperidol",
    price: 350000,
    imgAsset: "assets/images/med_3.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 4,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_1.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 5,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_2.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 6,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_3.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 7,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_1.png",
    amount: 10,
  ),
  MedicineEntity(
    id: 7,
    name: "Fridep 50 mg",
    price: 350000,
    imgAsset: "assets/images/med_3.png",
    amount: 10,
  ),
];
