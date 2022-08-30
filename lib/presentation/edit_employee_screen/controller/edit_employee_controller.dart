import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/data/models/devices/get_devices_resp.dart';
import 'package:officeinventoryapp/data/models/recB8ZC9fU116re8Z/get_rec_b8_z_c9f_u116re8_z_resp.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/rowDeviceItemModel.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/rowFurnitureItemModel.dart';
import 'package:officeinventoryapp/presentation/profile_screen/models/profile_model.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/edit_employee_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/furniture/get_furniture_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';
import 'package:officeinventoryapp/data/models/employee/put_employee_resp.dart';

class EditEmployeeController extends GetxController {
  Rx<TextEditingController> groupFiftySixController4 =
      TextEditingController().obs;

  Rx<TextEditingController> groupFiftySixOneController1 =
      TextEditingController().obs;

  Rx<TextEditingController> groupFiftySixTwoController1 =
      TextEditingController().obs;

  Rx<TextEditingController> groupFiftySixThreeController1 =
      TextEditingController().obs;

  Rx<EditEmployeeModel> editEmployeeModelObj = EditEmployeeModel().obs;

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  // Rx<RowDeviceItemModel> rowSelectedDeviceItemModel = RowDeviceItemModel().obs;

  GetRecB8ZC9fU116re8ZResp getRecB8ZC9fU116re8ZResp =
      GetRecB8ZC9fU116re8ZResp();

  GetDevicesResp getDevicesResp = GetDevicesResp();

  GetFurnitureResp getFurnitureResp = GetFurnitureResp();

  PutEmployeeResp putEmployeeResp = PutEmployeeResp();

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
    this.callFetchRecB8ZC9fU116re8Z(
      successCall: _onFetchRecB8ZC9fU116re8ZSuccess,
      errCall: _onFetchRecB8ZC9fU116re8ZError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController4.value.dispose();
    groupFiftySixOneController1.value.dispose();
    groupFiftySixTwoController1.value.dispose();
    groupFiftySixThreeController1.value.dispose();
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
    /*name: controller.groupFiftySixController4.text,
    role: controller.groupFiftySixThreeController1.text,
    phone: controller.groupFiftySixTwoController1.text,
    email: controller.groupFiftySixOneController1.text,*/

    groupFiftySixController4.value.text =
        getRecB8ZC9fU116re8ZResp.fields!.name!.toString();
    groupFiftySixTwoController1.value.text =
        getRecB8ZC9fU116re8ZResp.fields!.phone!.toString();
    groupFiftySixOneController1.value.text =
        getRecB8ZC9fU116re8ZResp.fields!.email!.toString();
    groupFiftySixThreeController1.value.text =
        getRecB8ZC9fU116re8ZResp.fields!.role!.toString();
    getRecB8ZC9fU116re8ZResp.fields!.devices?.forEach((element) {
      editEmployeeModelObj.value.rowDeviceItemList
          .firstWhereOrNull((p0) => p0.deviceRecordId.value == element)
          ?.isSelected
          .value = true;
    });

    getRecB8ZC9fU116re8ZResp.fields!.furniture?.forEach((element) {
      editEmployeeModelObj.value.rowFurnitureItemList
          .firstWhereOrNull((p1) => p1.furnitureRecordId.value == element)
          ?.isSelected
          .value = true;
    });

    print("Selected Device Item - ${getRecB8ZC9fU116re8ZResp.fields!.devices}");
    print(
        "Selected Furniture Item - ${getRecB8ZC9fU116re8ZResp.fields!.furniture}");

    // Get.find<PrefUtils>().setSelectedRecordId(getRecB8ZC9fU116re8ZResp.fields!.devices!);
  }

  void _onFetchRecB8ZC9fU116re8ZError() {}

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
    editEmployeeModelObj.value.rowFurnitureItemList.clear();
    if (getFurnitureResp!.records!.isNotEmpty) {
      for (var element in getFurnitureResp!.records!) {
        var rowFurnitureItemModel = RowFurnitureItemModel();
        rowFurnitureItemModel.furnitureRecordId.value = element.id.toString();
        rowFurnitureItemModel.isSelected.value = false;
        rowFurnitureItemModel.furnitureTxt.value =
            element.fields?.furnitureName?.toString() ?? 'furnitureText';
        rowFurnitureItemModelList.add(rowFurnitureItemModel);
      }
    }

    editEmployeeModelObj.value.rowFurnitureItemList.value
        .addAll(rowFurnitureItemModelList);
  }

  void _onFetchFurnitureError() {}

  void callUpdateEmployee(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().updateEmployee(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onUpdateEmployeeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onUpdateEmployeeError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onUpdateEmployeeSuccess(var response) {
    putEmployeeResp = PutEmployeeResp.fromJson(response);
  }

  void onUpdateEmployeeError(var err) {
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
    editEmployeeModelObj.value.rowDeviceItemList.clear();
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

    editEmployeeModelObj.value.rowDeviceItemList.value
        .addAll(rowDeviceItemModelList);

    /*addEmployeeModelObj.value.deviceCounterTxt.value =
        getDevicesResp.records![0].fields!.name!.toString();*/
  }

  void _onFetchDevicesError() {}
}
