import '../controller/edit_employee_controller.dart';
import 'package:get/get.dart';

class EditEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditEmployeeController());
  }
}
