part of 'controller.dart';

class ConsultationDetailController extends GetxController {
  var isExpanded = false.obs;
  var selectedTime = (-1).obs;

  void setExpanded() {
    isExpanded.value = !isExpanded.value;
  }

  void setSelectedTime(int index) {
    if (selectedTime.value == index) {
      selectedTime.value = -1;
    } else {
      selectedTime.value = index;
    }
  }
}
