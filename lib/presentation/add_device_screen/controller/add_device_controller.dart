import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/presentation/add_device_screen/add_device_screen.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/add_device_screen/models/add_device_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/devices/post_devices_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';


class AddDeviceController extends GetxController {
  TextEditingController groupFiftySixController = TextEditingController();

  Rx<AddDeviceModel> addDeviceModelObj = AddDeviceModel().obs;

  PostDevicesResp postDevicesResp = PostDevicesResp();

  Rx<SelectedDeviceType> deviceType = SelectedDeviceType.Android.obs;


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController.dispose();
  }

  void callCreateDevices(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createDevices(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onCreateDevicesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateDevicesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateDevicesSuccess(var response) {
    postDevicesResp = PostDevicesResp.fromJson(response);
  }

  void onCreateDevicesError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
