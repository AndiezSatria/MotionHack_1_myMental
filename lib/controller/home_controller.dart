part of 'controller.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var sliderController = CarouselController().obs;
  var searchController = TextEditingController().obs;

  void setIndex(int index) {
    currentIndex.value = index;
  }
}
