part of 'controller.dart';

class LoginController extends GetxController {
  var passwordController = TextEditingController().obs;
  var isPasswordVisible = false.obs;
  var isPasswordValid = true.obs;
  var message = "".obs;

  void setPasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void setIsPasswordValid(String password) {
    if (password.length < 8 && password.isNotEmpty) {
      isPasswordValid.value = false;
      message.value = "Password harus lebih dari 8 digit.";
    } else if (password.trim().isEmpty) {
      message.value = "Password field kosong.";
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }
  }
}
