import '../controller/device_controller.dart';
import 'package:get/get.dart';

class DeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeviceController());
  }
}
