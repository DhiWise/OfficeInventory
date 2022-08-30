import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/all_employee_screen/models/all_employee_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/employee/delete_employee_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';
import 'package:officeinventoryapp/data/models/employee/get_employee_resp.dart';
import '../models/listemployeecounter_item_model.dart';

class AllEmployeeController extends GetxController {
  Rx<AllEmployeeModel> allEmployeeModelObj = AllEmployeeModel().obs;

  DeleteEmployeeResp deleteEmployeeResp = DeleteEmployeeResp();

  GetEmployeeResp getEmployeeResp = GetEmployeeResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchEmployee(
      successCall: _onFetchEmployeeSuccess,
      errCall: _onFetchEmployeeError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteEmployee(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().deleteEmployee(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onDeleteEmployeeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteEmployeeError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onDeleteEmployeeSuccess(var response) {
    deleteEmployeeResp = DeleteEmployeeResp.fromJson(response);
  }

  void onDeleteEmployeeError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callFetchEmployee(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchEmployee(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onFetchEmployeeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchEmployeeError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchEmployeeSuccess(var response) {
    getEmployeeResp = GetEmployeeResp.fromJson(response);
  }

  void onFetchEmployeeError(var err) {
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

  void _onFetchEmployeeSuccess() {
    List<ListemployeecounterItemModel> listemployeecounterItemModelList = [];
    if (getEmployeeResp!.records! != null &&
        getEmployeeResp!.records!.isNotEmpty) {
      for (var element in getEmployeeResp!.records!) {
        var listemployeecounterItemModel = ListemployeecounterItemModel();
        listemployeecounterItemModel.employeeRecordId.value = element.id!;
        listemployeecounterItemModel.employeeCounterTxt.value =
            element.fields!.name!.toString();
        listemployeecounterItemModel.loremipsumisTxt.value =
            element.fields!.role!.toString();
        listemployeecounterItemModelList.add(listemployeecounterItemModel);
      }
    }
    allEmployeeModelObj.value.listemployeecounterItemList.value =
        listemployeecounterItemModelList;
  }

  void _onFetchEmployeeError() {
    Get.snackbar('', "Employee not found");
  }
}
