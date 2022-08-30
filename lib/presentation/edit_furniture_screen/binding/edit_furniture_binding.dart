import '../controller/edit_furniture_controller.dart';
import 'package:get/get.dart';

class EditFurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditFurnitureController());
  }
}
