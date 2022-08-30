import '../controller/category_controller.dart';
import 'package:get/get.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController());
  }
}
