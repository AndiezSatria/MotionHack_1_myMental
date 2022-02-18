part of 'controller.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();

  late Rx<User?> user;
}
