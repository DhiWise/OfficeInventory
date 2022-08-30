import '../controller/all_employee_controller.dart';
import 'package:get/get.dart';

class AllEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllEmployeeController());
  }
}
