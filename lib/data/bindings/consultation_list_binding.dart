part of 'bindings.dart';

class ConsultationListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConsultationListController());
  }
}