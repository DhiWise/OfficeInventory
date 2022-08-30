import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/recB8ZC9fU116re8Z/get_rec_b8_z_c9f_u116re8_z_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetRecB8ZC9fU116re8ZResp getRecB8ZC9fU116re8ZResp =
      GetRecB8ZC9fU116re8ZResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchRecB8ZC9fU116re8Z(
      successCall: _onFetchRecB8ZC9fU116re8ZSuccess,
      errCall: _onFetchRecB8ZC9fU116re8ZError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchRecB8ZC9fU116re8Z(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchRecB8ZC9fU116re8Z(
        headers: {
          'Authorization': '${MyConstant.authentication}',

        },
        onSuccess: (resp) {
          onFetchRecB8ZC9fU116re8ZSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRecB8ZC9fU116re8ZError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchRecB8ZC9fU116re8ZSuccess(var response) {
    getRecB8ZC9fU116re8ZResp = GetRecB8ZC9fU116re8ZResp.fromJson(response);
  }

  void onFetchRecB8ZC9fU116re8ZError(var err) {
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

  void _onFetchRecB8ZC9fU116re8ZSuccess() {
    profileModelObj.value.nameTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.name!.toString();
    profileModelObj.value.mobilenumbervTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.phone!.toString();
    profileModelObj.value.emailOneTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.email!.toString();
    profileModelObj.value.dateTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.role!.toString();
    profileModelObj.value.assignDeviceTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.devices!.length.toString();
    profileModelObj.value.assignFurnitureTxt.value =
        getRecB8ZC9fU116re8ZResp.fields!.furniture!.length.toString();
  }

  void _onFetchRecB8ZC9fU116re8ZError() {}
}
