import '../controller/add_furniture_controller.dart';
import 'package:get/get.dart';

class AddFurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddFurnitureController());
  }
}
