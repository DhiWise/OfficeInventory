import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/data/models/recJt0IEYnNp0Cdj2/get_rec_jt0_i_e_yn_np0_cdj2_resp.dart';
import 'package:officeinventoryapp/presentation/edit_device_screen/edit_device_screen.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/edit_device_screen/models/edit_device_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/devices/put_devices_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';

class EditDeviceController extends GetxController {
  Rx<TextEditingController> groupFiftySixController5 =
      TextEditingController().obs;

  Rx<EditDeviceModel> editDeviceModelObj = EditDeviceModel().obs;

  PutDevicesResp putDevicesResp = PutDevicesResp();

  Rx<SelectedDeviceType> deviceType = SelectedDeviceType.Android.obs;

  GetRecJt0IEYnNp0Cdj2Resp getRecJt0IEYnNp0Cdj2Resp =
      GetRecJt0IEYnNp0Cdj2Resp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchRecJt0IEYnNp0Cdj2(
      successCall: _onFetchRecJt0IEYnNp0Cdj2Success,
      errCall: _onFetchRecJt0IEYnNp0Cdj2Error,
    );
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController5.value.dispose();
  }

  void callUpdateDevices(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().updateDevices(
        headers: {
          'Authorization': '${MyConstant.authentication}',        },
        onSuccess: (resp) {
          onUpdateDevicesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onUpdateDevicesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onUpdateDevicesSuccess(var response) {
    putDevicesResp = PutDevicesResp.fromJson(response);
  }

  void onUpdateDevicesError(var err) {
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

  void callFetchRecJt0IEYnNp0Cdj2(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchRecJt0IEYnNp0Cdj2(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onFetchRecJt0IEYnNp0Cdj2Success(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRecJt0IEYnNp0Cdj2Error(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchRecJt0IEYnNp0Cdj2Success(var response) {
    getRecJt0IEYnNp0Cdj2Resp = GetRecJt0IEYnNp0Cdj2Resp.fromJson(response);
  }

  void onFetchRecJt0IEYnNp0Cdj2Error(var err) {
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

  void _onFetchRecJt0IEYnNp0Cdj2Success() {
    var selectedType = getRecJt0IEYnNp0Cdj2Resp.fields!.type;
    print("selectedType Name - $selectedType");
    groupFiftySixController5.value.text =
        getRecJt0IEYnNp0Cdj2Resp.fields!.name!.toString();
    deviceType.value = SelectedDeviceType.values.firstWhere((element) => element.name == selectedType);
    // if (selectedType == SelectedDeviceType.Android.name) {
    //   deviceType.value = SelectedDeviceType.Android;
    // }
    // if (selectedType == SelectedDeviceType.iOS.name) {
    //   deviceType.value = SelectedDeviceType.iOS;
    // }
    // if (selectedType == SelectedDeviceType.Laptop.name) {
    //   deviceType.value = SelectedDeviceType.Laptop;
    // }
    // if (selectedType == SelectedDeviceType.Other.name) {
    //   deviceType.value = SelectedDeviceType.Other;
    // }

    // print("Selected is - ${SelectedDeviceType.values.where((element) => element.name == getRecJt0IEYnNp0Cdj2Resp.fields!.type)}");
  }

  void _onFetchRecJt0IEYnNp0Cdj2Error() {}
}
