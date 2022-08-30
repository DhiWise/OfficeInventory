import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/rowDeviceItemModel.dart';

import '../controller/add_employee_controller.dart';

class RowDeviceItemWidgets extends StatelessWidget {
  RowDeviceItemWidgets(
      this.rowDeviceItemModelObj); // const RowDeviceItemWidgets({Key? key}) : super(key: key);

  RowDeviceItemModel rowDeviceItemModelObj;
  var controller = Get.find<AddEmployeeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          rowDeviceItemModelObj.isSelected.value =
              !rowDeviceItemModelObj.isSelected.value;
          print(
              " ${rowDeviceItemModelObj.deviceRecordId.value} and its ${rowDeviceItemModelObj.isSelected.value} Clicked!...");
        },
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.only(
              right: getHorizontalSize(
                16.00,
              ),
            ),
            padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
            decoration: AppDecoration.txtFillBluegray50.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder19,
                border: Border.all(
                  width: 3,
                  color: rowDeviceItemModelObj.isSelected.value
                      ? Colors.blueAccent
                      : Colors.black12,
                )),
            child: Text(
              rowDeviceItemModelObj.deviceTxt.value.isEmpty
                  ? 'empty'
                  : rowDeviceItemModelObj.deviceTxt.value,
              style: AppStyle.txtPoppinsRegular12Black901.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
