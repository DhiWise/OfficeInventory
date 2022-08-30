import '../controller/all_employee_controller.dart';
import '../models/listemployeecounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

// ignore: must_be_immutable
class ListemployeecounterItemWidget extends StatelessWidget {
  ListemployeecounterItemWidget(this.listemployeecounterItemModelObj);

  ListemployeecounterItemModel listemployeecounterItemModelObj;

  var controller = Get.find<AllEmployeeController>();

  // VoidCallback? onTapImgTrash;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onTapRowEmployeeCounter();
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
                top: 29,
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
                        listemployeecounterItemModelObj
                            .employeeCounterTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold18.copyWith(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Obx(
                      () => Text(
                        listemployeecounterItemModelObj.loremipsumisTxt.value,
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
                      _onTapImgEdit();
                    },
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEdit,
                      height: getVerticalSize(
                        18.00,
                      ),
                      width: getHorizontalSize(
                        17.00,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _onTapImgTrash();
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
                          15.00,
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

  _onTapRowEmployeeCounter() {
    Get.find<PrefUtils>().setEmployeeRecordId(
        listemployeecounterItemModelObj.employeeRecordId.value.toString());
    Get.offAndToNamed(AppRoutes.profileScreen);
  }

  _onTapImgEdit() {
    print(
        'edt clicked - ${listemployeecounterItemModelObj.employeeRecordId.value}');
    Get.find<PrefUtils>().setEmployeeRecordId(
        listemployeecounterItemModelObj.employeeRecordId.value.toString());
    // Get.toNamed(AppRoutes.editEmployeeScreen);
    Get.offAndToNamed(AppRoutes.editEmployeeScreen);
  }

  void _onTapImgTrash() {
    print("Deleted!..");
    Map<String, dynamic> queryParams = {
      'records[]': listemployeecounterItemModelObj.employeeRecordId.value
      // 'records[]': controller.getEmployeeResp.records![0].id!
    };
    controller.callDeleteEmployee(
        successCall: _onDeleteEmployeeSuccess,
        errCall: _onDeleteEmployeeError,
        queryParams: queryParams);
  }

  void _onDeleteEmployeeSuccess() {
    Get.snackbar('', "Employee Deleted");
    controller.allEmployeeModelObj.value.listemployeecounterItemList
        .removeWhere((element) =>
            element.employeeRecordId ==
            listemployeecounterItemModelObj.employeeRecordId.value);
  }

  void _onDeleteEmployeeError() {
    Get.snackbar('', "Employee Not Deleted");
  }
}
