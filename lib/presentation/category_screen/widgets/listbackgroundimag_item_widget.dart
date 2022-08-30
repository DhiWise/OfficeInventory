import '../controller/category_controller.dart';
import '../models/listbackgroundimag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

// ignore: must_be_immutable
class ListbackgroundimagItemWidget extends StatelessWidget {
  ListbackgroundimagItemWidget(this.listbackgroundimagItemModelObj,
      {this.onTapImgBackgroundimag});

  ListbackgroundimagItemModel listbackgroundimagItemModelObj;

  var controller = Get.find<CategoryController>();

  VoidCallback? onTapImgBackgroundimag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        150.00,
      ),
      width: getHorizontalSize(
        396.00,
      ),
      margin: getMargin(
        right: 24,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                onTapImgBackgroundimag!();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgBackgroundimag,
                  height: getVerticalSize(
                    150.00,
                  ),
                  width: getHorizontalSize(
                    396.00,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: getMargin(
                all: 20,
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
                      "lbl_employee".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold20WhiteA700.copyWith(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 2,
                        top: 4,
                      ),
                      child: Text(
                        "msg_details_of_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14WhiteA700.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
