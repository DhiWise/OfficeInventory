import '../controller/add_employee_controller.dart';
import 'package:get/get.dart';

class AddEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEmployeeController());
  }
}
