part of 'controller.dart';

class ActivityController extends GetxController {
  var selectedTab = 0.obs;

  void setSelectedNavigation(int selectedTab) {
    this.selectedTab.value = selectedTab;
  }
}