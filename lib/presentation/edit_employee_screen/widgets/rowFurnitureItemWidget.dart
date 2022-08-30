import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/controller/edit_employee_controller.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/models/rowFurnitureItemModel.dart';


class RowFurnitureItemWidgets extends StatelessWidget {
  RowFurnitureItemWidgets(
      this.rowFurnitureItemModelObj); // const RowDeviceItemWidgets({Key? key}) : super(key: key);

  RowFurnitureItemModel rowFurnitureItemModelObj;
  var controller = Get.find<EditEmployeeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          rowFurnitureItemModelObj.isSelected.value =
              !rowFurnitureItemModelObj.isSelected.value;
          print(
              " ${rowFurnitureItemModelObj.furnitureRecordId.value} and its ${rowFurnitureItemModelObj.isSelected.value} Clicked!...");
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
                  color: rowFurnitureItemModelObj.isSelected.value
                      ? Colors.blueAccent
                      : Colors.black12,
                )),
            child: Text(
              rowFurnitureItemModelObj.furnitureTxt.value.isEmpty
                  ? 'empty'
                  : rowFurnitureItemModelObj.furnitureTxt.value,
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
