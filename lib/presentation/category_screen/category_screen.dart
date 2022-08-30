import 'package:get/get_utils/src/extensions/export.dart';
import 'package:officeinventoryapp/core/utils/image_constant.dart';
import 'package:officeinventoryapp/core/utils/math_utils.dart';
import 'package:officeinventoryapp/theme/app_style.dart';
import 'package:officeinventoryapp/widgets/common_image_view.dart';

import '../../core/app_export.dart';
import 'controller/category_controller.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Padding(
                          padding: getPadding(left: 16, top: 31, right: 16),
                          child: Text("lbl_inventory".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20.copyWith())),
                      Container(
                          margin: getMargin(left: 16, top: 27, right: 16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height:
                                        getVerticalSize(
                                            150.00),
                                        width:
                                        getHorizontalSize(
                                            396.00),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgBackgroundimag();
                                                      },
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBackgroundimag,
                                                              height:
                                                                  getVerticalSize(
                                                                      150.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      396.00))))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin:
                                                          getMargin(all: 20),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 30,
                                                                  right: 10,
                                                                ),
                                                                child: Text(
                                                                    "lbl_employee"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold20WhiteA700
                                                                        .copyWith())),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            30,
                                                                        bottom:
                                                                            10),
                                                                    child: Text(
                                                                        "msg_details_of_all"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium14New
                                                                            .copyWith())))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(150.00),
                                        width: getHorizontalSize(396.00),
                                        margin: getMargin(top: 24),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgBackgroundimagOne();
                                                      },
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBackgroundimag150X396,
                                                              height:
                                                                  getVerticalSize(
                                                                      150.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      396.00))))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 24,
                                                          right: 20,
                                                          bottom: 24),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                      left: 30,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_device"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold20WhiteA700
                                                                        .copyWith())),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 30, bottom: 10),
                                                                    child: Text(
                                                                        "msg_details_of_all2"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium14New
                                                                            .copyWith())))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(150.00),
                                        width: getHorizontalSize(396.00),
                                        margin: getMargin(top: 23),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgBackgroundimagTwo();
                                                      },
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBackgroundimag1,
                                                              height:
                                                                  getVerticalSize(
                                                                      150.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      396.00))))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 24,
                                                          right: 20,
                                                          bottom: 24),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                      left: 30,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_furniture2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold20WhiteA700
                                                                        .copyWith())),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 30,
                                                                        bottom: 10,),
                                                                    child: Text(
                                                                        "msg_details_of_all3"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium14New
                                                                            .copyWith())))
                                                          ])))
                                            ]))),
                              ]))
                    ]))))));
  }

  onTapImgBackgroundimag() {
    Get.toNamed(AppRoutes.allEmployeeScreen);
    print("1 clicked");
  }

  onTapImgBackgroundimagOne() {
    Get.toNamed(AppRoutes.allDeviceScreen);
    print("2 clicked");
  }

  onTapImgBackgroundimagTwo() {
    Get.toNamed(AppRoutes.allFurnitureScreen);
    print("3 clicked");
  }
}
