import 'package:care_me/shared/shared.dart';
import 'package:care_me/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';
import 'data/bindings/bindings.dart';
import 'utils/constants/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'myMental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: secondaryColor,
          unselectedItemColor: Colors.grey,
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: mainColor,
              onPrimary: Colors.black,
              secondary: secondaryColor,
            ),
        unselectedWidgetColor: Colors.white,
        textTheme: textTheme,
        appBarTheme: const AppBarTheme(elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            onPrimary: secondaryColor,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
      ),
      initialRoute: SplashPage.routeName,
      getPages: [
        GetPage(
          name: ChooseLoginPage.routeName,
          page: () => const ChooseLoginPage(),
        ),
        GetPage(
          name: SplashPage.routeName,
          page: () => const SplashPage(),
        ),
        GetPage(
          name: LoginPage.routeName,
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: ForgetPassConfirmationPage.routeName,
          page: () => const ForgetPassConfirmationPage(),
        ),
        GetPage(
          name: ForgetPasswordPage.routeName,
          page: () => const ForgetPasswordPage(),
        ),
        GetPage(
          name: RegisterPage.routeName,
          page: () => RegisterPage(),
          binding: RegisterBinding(),
        ),
        GetPage(
          name: ConsultationListPage.routeName,
          page: () => ConsultationListPage(),
          binding: ConsultationListBinding(),
        ),
        GetPage(
          name: ConsultationDetailPage.routeName,
          page: () => ConsultationDetailPage(),
          binding: ConsultationDetailBinding(),
        ),
      ],
    );
  }
}
