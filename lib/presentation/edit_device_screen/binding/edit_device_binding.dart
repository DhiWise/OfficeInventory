import '../controller/edit_device_controller.dart';
import 'package:get/get.dart';

class EditDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditDeviceController());
  }
}
