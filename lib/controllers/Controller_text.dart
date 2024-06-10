import 'package:get/get.dart';

class TextController extends GetxController {
  RxString text = ''.obs; // Observe changes to the text

  void updateText(String newText) {
    text.value = newText;
  }
}
