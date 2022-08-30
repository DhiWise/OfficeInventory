import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if(Get.find<PrefUtils>().getEmail().isNotEmpty && Get.find<PrefUtils>().getPassword().isNotEmpty ){
        Get.offAllNamed(AppRoutes.categoryScreen);
      }
      else {
        Get.offAllNamed(AppRoutes.welcomeScreen);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
