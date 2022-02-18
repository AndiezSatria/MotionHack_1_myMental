part of 'controller.dart';

class RegisterController extends GetxController {
  var passwordController = TextEditingController().obs;
  var nameController = TextEditingController().obs;

  var isPasswordVisible = false.obs;
  var isPasswordValid = true.obs;
  var passwordMessage = "".obs;

  var isNameValid = true.obs;
  var nameMessage = "".obs;

  void setPasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void setIsPasswordValid(String password) {
    if (password.length < 8 && password.isNotEmpty) {
      isPasswordValid.value = false;
      passwordMessage.value = "Password harus lebih dari 8 digit.";
    } else if (password.trim().isEmpty) {
      passwordMessage.value = "Kolom password kosong.";
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }
  }

  void setIsNameValid(String name) {
    if (name.trim().isEmpty) {
      nameMessage.value = "Kolom Nama kosong.";
      isNameValid.value = false;
    } else {
      isNameValid.value = true;
    }
  }
}
