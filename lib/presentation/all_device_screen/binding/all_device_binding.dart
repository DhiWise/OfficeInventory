import '../controller/all_device_controller.dart';
import 'package:get/get.dart';

class AllDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllDeviceController());
  }
}
