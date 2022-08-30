import '../controller/employee_controller.dart';
import '../models/listcategorycounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

// ignore: must_be_immutable
class ListcategorycounterItemWidget extends StatelessWidget {
  ListcategorycounterItemWidget(this.listcategorycounterItemModelObj);

  ListcategorycounterItemModel listcategorycounterItemModelObj;

  var controller = Get.find<EmployeeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 16,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
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
                  child: Text(
                    "lbl_category_1".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold18.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_is".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14Black90087.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 89,
              top: 25,
              right: 24,
              bottom: 25,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImgavatarquan,
                height: getSize(
                  50.00,
                ),
                width: getSize(
                  50.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
