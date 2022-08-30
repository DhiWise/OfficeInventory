import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/all_furniture_screen/models/all_furniture_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/furniture/delete_furniture_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';
import 'package:officeinventoryapp/data/models/furniture/get_furniture_resp.dart';
import '../models/listfurniturecounter_item_model.dart';

class AllFurnitureController extends GetxController {
  Rx<AllFurnitureModel> allFurnitureModelObj = AllFurnitureModel().obs;

  DeleteFurnitureResp deleteFurnitureResp = DeleteFurnitureResp();

  GetFurnitureResp getFurnitureResp = GetFurnitureResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchFurniture(
      successCall: _onFetchFurnitureSuccess,
      errCall: _onFetchFurnitureError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteFurniture(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().deleteFurniture(

        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onDeleteFurnitureSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteFurnitureError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onDeleteFurnitureSuccess(var response) {
    deleteFurnitureResp = DeleteFurnitureResp.fromJson(response);
  }

  void onDeleteFurnitureError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

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
    List<ListfurniturecounterItemModel> listfurniturecounterItemModelList = [];
    if (getFurnitureResp!.records! != null &&
        getFurnitureResp!.records!.isNotEmpty) {
      for (var element in getFurnitureResp!.records!) {
        var listfurniturecounterItemModel = ListfurniturecounterItemModel();
        listfurniturecounterItemModel.furnitureRecordId.value = element.id!.toString();
        listfurniturecounterItemModel.furnitureCounterTxt.value =
            element.fields!.furnitureName!.toString();
        listfurniturecounterItemModel.loremipsumisTxt.value =
            element.fields!.type!.toString();
        listfurniturecounterItemModelList.add(listfurniturecounterItemModel);
      }
    }
    allFurnitureModelObj.value.listfurniturecounterItemList.value =
        listfurniturecounterItemModelList;
  }

  void _onFetchFurnitureError() {}
}
