import '../controller/add_device_controller.dart';
import 'package:get/get.dart';

class AddDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddDeviceController());
  }
}
