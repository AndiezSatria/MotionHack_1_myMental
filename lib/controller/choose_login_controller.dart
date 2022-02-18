part of 'controller.dart';

class ChooseLoginController extends GetxController {
  var email = ''.obs;
  var isValidate = false.obs;
  void validateEmail(String email) {
    isValidate = EmailValidator.validate(email).obs;
    this.email = email.obs;
  }
}
