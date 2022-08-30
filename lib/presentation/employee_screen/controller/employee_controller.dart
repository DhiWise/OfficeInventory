import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/employee_screen/models/employee_model.dart';

class EmployeeController extends GetxController {
  Rx<EmployeeModel> employeeModelObj = EmployeeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
