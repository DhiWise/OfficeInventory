import 'package:officeinventoryapp/core/constants/MyConstant.dart';
import 'package:officeinventoryapp/presentation/add_furniture_screen/add_furniture_screen.dart';

import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/add_furniture_screen/models/add_furniture_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/data/models/furniture/post_furniture_resp.dart';
import 'package:officeinventoryapp/data/apiClient/api_client.dart';

class AddFurnitureController extends GetxController {
  TextEditingController groupFiftySixController1 = TextEditingController();

  Rx<AddFurnitureModel> addFurnitureModelObj = AddFurnitureModel().obs;

  Rx<SelectedFurnitureType> furnitureType = SelectedFurnitureType.Chair.obs;

  PostFurnitureResp postFurnitureResp = PostFurnitureResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftySixController1.dispose();
  }

  void callCreateFurniture(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createFurniture(
        headers: {
          'Authorization': '${MyConstant.authentication}',
        },
        onSuccess: (resp) {
          onCreateFurnitureSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateFurnitureError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateFurnitureSuccess(var response) {
    postFurnitureResp = PostFurnitureResp.fromJson(response);
  }

  void onCreateFurnitureError(var err) {
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
