part of 'bindings.dart';

class ConsultationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConsultationDetailController());
  }
}
