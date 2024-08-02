import 'package:get/get.dart';

class Controllers extends GetxController {
  var page_index = 0.obs;

  void ChnagePageIndex(int index) {
    page_index.value = index;
  }
}
