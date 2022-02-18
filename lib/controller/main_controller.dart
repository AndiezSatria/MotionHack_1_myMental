part of 'controller.dart';

class MainController extends GetxController {
  var selectedNavigation = 0.obs;

  void setSelectedNavigation(int selectedNavigation) {
    this.selectedNavigation.value = selectedNavigation;
  }
}
