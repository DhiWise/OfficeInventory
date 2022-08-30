import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/device_screen/models/device_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/recJt0IEYnNp0Cdj2/get_rec_jt0_i_e_yn_np0_cdj2_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';

class DeviceController extends GetxController {
  Rx<DeviceModel> deviceModelObj = DeviceModel().obs;

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
    deviceModelObj.value.nameTxt.value =
        getRecJt0IEYnNp0Cdj2Resp.fields!.name!.toString();
    deviceModelObj.value.fiveTxt.value =
        getRecJt0IEYnNp0Cdj2Resp.fields!.type!.toString();
    deviceModelObj.value.assignDeviceTxt.value =
        getRecJt0IEYnNp0Cdj2Resp.fields!.employee!.length!.toString();
  }

  void _onFetchRecJt0IEYnNp0Cdj2Error() {}
}
