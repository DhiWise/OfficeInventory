import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/data/models/rec3WMmnJG453Rp9v/get_rec3_w_mmn_j_g453_rp9v_resp.dart';
import 'package:officeinventoryapp/presentation/edit_furniture_screen/edit_furniture_screen.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/edit_furniture_screen/models/edit_furniture_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/furniture/put_furniture_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';

class EditFurnitureController extends GetxController {
  Rx<TextEditingController> groupFiftySixController3 =
      TextEditingController().obs;

  GetRec3WMmnJG453Rp9vResp getRec3WMmnJG453Rp9vResp =
      GetRec3WMmnJG453Rp9vResp();

  Rx<SelectedFurnitureType> furnitureType = SelectedFurnitureType.Chair.obs;

  Rx<EditFurnitureModel> editFurnitureModelObj = EditFurnitureModel().obs;

  PutFurnitureResp putFurnitureResp = PutFurnitureResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchRec3WMmnJG453Rp9v(
      successCall: _onFetchRec3WMmnJG453Rp9vSuccess,
      errCall: _onFetchRec3WMmnJG453Rp9vError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController3.value.dispose();
  }

  void callUpdateFurniture(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().updateFurniture(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onUpdateFurnitureSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onUpdateFurnitureError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onUpdateFurnitureSuccess(var response) {
    putFurnitureResp = PutFurnitureResp.fromJson(response);
  }

  void onUpdateFurnitureError(var err) {
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

  void callFetchRec3WMmnJG453Rp9v(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchRec3WMmnJG453Rp9v(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onFetchRec3WMmnJG453Rp9vSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRec3WMmnJG453Rp9vError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchRec3WMmnJG453Rp9vSuccess(var response) {
    getRec3WMmnJG453Rp9vResp = GetRec3WMmnJG453Rp9vResp.fromJson(response);
  }

  void onFetchRec3WMmnJG453Rp9vError(var err) {
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

  void _onFetchRec3WMmnJG453Rp9vSuccess() {
    var selectedType = getRec3WMmnJG453Rp9vResp.fields!.type;
    groupFiftySixController3.value.text =
        getRec3WMmnJG453Rp9vResp.fields!.furnitureName!.toString();

    furnitureType.value = SelectedFurnitureType.values
        .firstWhere((element) => element.name == selectedType);

    /*furnitureModelObj.value.fiveTxt.value =
        getRec3WMmnJG453Rp9vResp.fields!.type!.toString();
    furnitureModelObj.value.assignFurnitureTxt.value = getRec3WMmnJG453Rp9vResp.fields!.employee!.length.toString();*/
  }

  void _onFetchRec3WMmnJG453Rp9vError() {}
}
