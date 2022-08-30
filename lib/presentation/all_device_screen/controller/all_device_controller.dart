import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/all_device_screen/models/all_device_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/devices/delete_devices_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';
import 'package:officeinventoryapp/data/models/devices/get_devices_resp.dart';
import '../models/listdevicecounter_item_model.dart';

class AllDeviceController extends GetxController {
  Rx<AllDeviceModel> allDeviceModelObj = AllDeviceModel().obs;

  DeleteDevicesResp deleteDevicesResp = DeleteDevicesResp();

  GetDevicesResp getDevicesResp = GetDevicesResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchDevices(
      successCall: _onFetchDevicesSuccess,
      errCall: _onFetchDevicesError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteDevices(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().deleteDevices(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onDeleteDevicesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteDevicesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onDeleteDevicesSuccess(var response) {
    deleteDevicesResp = DeleteDevicesResp.fromJson(response);
  }

  void onDeleteDevicesError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callFetchDevices(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchDevices(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onFetchDevicesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchDevicesError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchDevicesSuccess(var response) {
    getDevicesResp = GetDevicesResp.fromJson(response);
  }

  void onFetchDevicesError(var err) {
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

  void _onFetchDevicesSuccess() {
    List<ListdevicecounterItemModel> listdevicecounterItemModelList = [];
    if (getDevicesResp!.records! != null &&
        getDevicesResp!.records!.isNotEmpty) {
      for (var element in getDevicesResp!.records!) {
        var listdevicecounterItemModel = ListdevicecounterItemModel();
        listdevicecounterItemModel.deviceRecordId.value = element.id.toString();
        listdevicecounterItemModel.deviceCounterTxt.value =
            element.fields!.name!.toString();
        listdevicecounterItemModel.loremipsumisTxt.value =
            element.fields!.type!.toString();
        listdevicecounterItemModelList.add(listdevicecounterItemModel);
      }
    }
    allDeviceModelObj.value.listdevicecounterItemList.value =
        listdevicecounterItemModelList;
  }

  void _onFetchDevicesError() {
    Get.snackbar('', "Devices Not Found");
  }
}
