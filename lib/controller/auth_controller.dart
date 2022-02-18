part of 'controller.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    super.onReady();
    // auth is comning from the constants.dart file but it is basically FirebaseAuth.instance.
    // Since we have to use that many times I just made a constant file and declared there

    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);

    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const LandingPage());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(
        () => const MainPage(),
        binding: MainBinding(),
      );
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    print(googleSignInAccount);
    if (googleSignInAccount == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const LandingPage());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(
        () => const MainPage(),
        binding: MainBinding(),
      );
    }
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => print(onErr));
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: redColor,
        colorText: Colors.white,
      );
      print(e.toString());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {
      Get.snackbar(
        "Error",
        firebaseAuthException.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: redColor,
        colorText: Colors.white,
      );
      print(firebaseAuthException.toString());
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {
      Get.snackbar(
        "Error",
        firebaseAuthException.toString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: redColor,
      );
      print(firebaseAuthException.toString());
    }
  }

  void signOut() async {
    await auth.signOut();
  }

  void sendEmailResetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      Get.toNamed(ForgetPassConfirmationPage.routeName);
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: redColor,
      );
      print(e.toString());
    }
  }
}
