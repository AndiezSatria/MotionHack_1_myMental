part of 'bindings.dart';

class ChooseLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseLoginController());
  }
}
