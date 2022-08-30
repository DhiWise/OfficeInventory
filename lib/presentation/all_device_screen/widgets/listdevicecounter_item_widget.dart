import '../controller/all_device_controller.dart';
import '../models/listdevicecounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

// ignore: must_be_immutable
class ListdevicecounterItemWidget extends StatelessWidget {
  ListdevicecounterItemWidget(this.listdevicecounterItemModelObj);

  ListdevicecounterItemModel listdevicecounterItemModelObj;

  var controller = Get.find<AllDeviceController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowdevicecounter();
      },
      child: Container(
        margin: getMargin(
          right: 16,
        ),
        decoration: AppDecoration.outlineGray70011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: getMargin(
                left: 24,
                top: 27,
                bottom: 23,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Obx(
                      () => Text(
                        listdevicecounterItemModelObj.deviceCounterTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold18.copyWith(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Obx(
                      () => Text(
                        listdevicecounterItemModelObj.loremipsumisTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black90087.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 118,
                top: 21,
                right: 27,
                bottom: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapImgEdit();
                    },
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEdit,
                      height: getVerticalSize(
                        17.00,
                      ),
                      width: getHorizontalSize(
                        18.00,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapImgTrash!();
                    },
                    child: Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgTrash,
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          18.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapRowdevicecounter() {
    print(
        "Item is pressed ${listdevicecounterItemModelObj.deviceRecordId.value}");
    Get.find<PrefUtils>()
        .setDeviceRecordId(listdevicecounterItemModelObj.deviceRecordId.value);
    Get.offAndToNamed(AppRoutes.deviceScreen);
  }

  void onTapImgTrash() {
    Map<String, dynamic> queryParams = {
      'records[]': listdevicecounterItemModelObj.deviceRecordId.value
    };
    controller.callDeleteDevices(
        successCall: _onDeleteDevicesSuccess,
        errCall: _onDeleteDevicesError,
        queryParams: queryParams);
  }

  void _onDeleteDevicesSuccess() {
    Get.snackbar('', "Device Deleted");
    controller.allDeviceModelObj.value.listdevicecounterItemList.removeWhere(
        (element) =>
            element.deviceRecordId ==
            listdevicecounterItemModelObj.deviceRecordId.value);

  }

  void _onDeleteDevicesError() {
    Get.snackbar('', "Device Not Deleted");
  }

  void onTapImgEdit() {
    Get.find<PrefUtils>()
        .setDeviceRecordId(listdevicecounterItemModelObj.deviceRecordId.value);
    Get.offAndToNamed(AppRoutes.editDeviceScreen);
  }
}
