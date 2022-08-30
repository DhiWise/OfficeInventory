import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/rowFurnitureItemModel.dart';

import '../../../data/models/furniture/get_furniture_resp.dart';
import '../models/rowDeviceItemModel.dart';
import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/add_employee_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/devices/get_devices_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';
import 'package:officeinventoryapp/data/models/employee/post_employee_resp.dart';

class AddEmployeeController extends GetxController {
  TextEditingController groupFiftySixController2 = TextEditingController();

  TextEditingController groupFiftySixOneController = TextEditingController();

  TextEditingController groupFiftySixTwoController = TextEditingController();

  TextEditingController groupFiftySixThreeController = TextEditingController();

  Rx<AddEmployeeModel> addEmployeeModelObj = AddEmployeeModel().obs;

  GetDevicesResp getDevicesResp = GetDevicesResp();

  GetFurnitureResp getFurnitureResp = GetFurnitureResp();

  PostEmployeeResp postEmployeeResp = PostEmployeeResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchDevices(
      successCall: _onFetchDevicesSuccess,
      errCall: _onFetchDevicesError,
    );
    this.callFetchFurniture(
      successCall: _onFetchFurnitureSuccess,
      errCall: _onFetchFurnitureError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController2.dispose();
    groupFiftySixOneController.dispose();
    groupFiftySixTwoController.dispose();
    groupFiftySixThreeController.dispose();
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
    List<RowDeviceItemModel> rowDeviceItemModelList = [];
    addEmployeeModelObj.value.rowDeviceItemList.clear();
    if (getDevicesResp!.records!.isNotEmpty) {
      for (var element in getDevicesResp!.records!) {
        var rowDeviceItemModel = RowDeviceItemModel();
        rowDeviceItemModel.deviceRecordId.value = element.id.toString();
        rowDeviceItemModel.isSelected.value = false;
        rowDeviceItemModel.deviceTxt.value =
            element.fields?.name?.toString() ?? 'deviceText';
        rowDeviceItemModelList.add(rowDeviceItemModel);
      }
    }

    addEmployeeModelObj.value.rowDeviceItemList.value
        .addAll(rowDeviceItemModelList);

    /*addEmployeeModelObj.value.deviceCounterTxt.value =
        getDevicesResp.records![0].fields!.name!.toString();*/
  }

  void _onFetchDevicesError() {}

  void callFetchFurniture(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchFurniture(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onFetchFurnitureSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchFurnitureError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchFurnitureSuccess(var response) {
    getFurnitureResp = GetFurnitureResp.fromJson(response);
  }

  void onFetchFurnitureError(var err) {
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

  void _onFetchFurnitureSuccess() {
    List<RowFurnitureItemModel> rowFurnitureItemModelList = [];
    addEmployeeModelObj.value.rowFurnitureItemList.clear();
    if (getDevicesResp!.records!.isNotEmpty) {
      for (var element in getFurnitureResp!.records!) {
        var rowFurnitureItemModel = RowFurnitureItemModel();
        rowFurnitureItemModel.furnitureRecordId.value = element.id.toString();
        rowFurnitureItemModel.isSelected.value = false;
        rowFurnitureItemModel.furnitureTxt.value =
            element.fields?.furnitureName?.toString() ?? 'furnitureText';
        print("Data is - ${element}");
        rowFurnitureItemModelList.add(rowFurnitureItemModel);
      }
    }

    addEmployeeModelObj.value.rowFurnitureItemList.value
        .addAll(rowFurnitureItemModelList);
  }

  void _onFetchFurnitureError() {}

  void callCreateEmployee(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createEmployee(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onCreateEmployeeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateEmployeeError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateEmployeeSuccess(var response) {
    postEmployeeResp = PostEmployeeResp.fromJson(response);
  }

  void onCreateEmployeeError(var err) {
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
