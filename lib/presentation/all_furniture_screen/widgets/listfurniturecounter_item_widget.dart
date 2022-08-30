import '../controller/all_furniture_controller.dart';
import '../models/listfurniturecounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

// ignore: must_be_immutable
class ListfurniturecounterItemWidget extends StatelessWidget {
  ListfurniturecounterItemWidget(this.listfurniturecounterItemModelObj);

  ListfurniturecounterItemModel listfurniturecounterItemModelObj;

  var controller = Get.find<AllFurnitureController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowfurniturecounter!();
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
                        listfurniturecounterItemModelObj
                            .furnitureCounterTxt.value,
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
                        listfurniturecounterItemModelObj.loremipsumisTxt.value,
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
                      onTapImgEdit!();
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

  onTapRowfurniturecounter() {
    print(
        "Furniture id - ${listfurniturecounterItemModelObj.furnitureRecordId.value}");
    Get.find<PrefUtils>().setFurnitureRecordId(
        listfurniturecounterItemModelObj.furnitureRecordId.value);
    Get.offAndToNamed(AppRoutes.furnitureScreen);
  }

  onTapImgEdit() {
    Get.find<PrefUtils>().setFurnitureRecordId(
        listfurniturecounterItemModelObj.furnitureRecordId.value);
    Get.offAndToNamed(AppRoutes.editFurnitureScreen);
  }

  void onTapImgTrash() {
    Map<String, dynamic> queryParams = {
      'records[]': listfurniturecounterItemModelObj.furnitureRecordId.value
    };
    controller.callDeleteFurniture(
        successCall: _onDeleteFurnitureSuccess,
        errCall: _onDeleteFurnitureError,
        queryParams: queryParams);
  }

  void _onDeleteFurnitureSuccess() {
    Get.snackbar('', "Furniture Deleted");
    controller.allFurnitureModelObj.value.listfurniturecounterItemList
        .removeWhere((element) =>
            element.furnitureRecordId.value ==
            listfurniturecounterItemModelObj.furnitureRecordId.value);
  }

  void _onDeleteFurnitureError() {
    Get.snackbar('', "Furniture Not Deleted");
  }
}
