import '../controller/all_furniture_controller.dart';
import 'package:get/get.dart';

class AllFurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllFurnitureController());
  }
}
