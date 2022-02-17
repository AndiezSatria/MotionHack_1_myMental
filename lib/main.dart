import 'package:care_me/shared/shared.dart';
import 'package:care_me/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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
              primary: Colors.white,
              onPrimary: Colors.black,
              secondary: secondaryColor,
            ),
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
        GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
        GetPage(name: SplashPage.routeName, page: () => const SplashPage())
      ],
    );
  }
}
