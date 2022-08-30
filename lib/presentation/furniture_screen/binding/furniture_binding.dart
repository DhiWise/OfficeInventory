import '../controller/furniture_controller.dart';
import 'package:get/get.dart';

class FurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FurnitureController());
  }
}
