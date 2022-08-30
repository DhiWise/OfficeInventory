import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 16, top: 20, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Padding(
                                    padding: getPadding(top: 7, bottom: 8),
                                    child: Text("lbl_profile".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20
                                            .copyWith())),
                                Container(
                                    height: 36,
                                    width: 36),
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(45.00)),
                                  child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgProfilepicture90X90,
                                      height: getSize(90.00),
                                      width: getSize(90.00))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 18, right: 16),
                              child: Obx(() => Text(
                                  controller
                                      .profileModelObj.value.nameTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14
                                      .copyWith(letterSpacing: 0.50))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 54, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 3, top: 3),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 3),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCalendar,
                                                      height: getSize(18.00),
                                                      width: getSize(18.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 19, top: 4),
                                                  child: Text("lbl_birthday".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14Indigo900
                                                          .copyWith()))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 5, right: 9, bottom: 6),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Obx(() => Text(
                                                      controller.profileModelObj
                                                          .value.dateTxt.value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 25, top: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00)))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 30, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 2, top: 4, bottom: 4),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgMessageicon,
                                                  height:
                                                      getVerticalSize(15.00),
                                                  width:
                                                      getHorizontalSize(20.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: Text("lbl_email2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14Indigo900
                                                          .copyWith()))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 6, right: 9, bottom: 4),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .profileModelObj
                                                          .value
                                                          .emailOneTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 25, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00)))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 30, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 6, top: 3, bottom: 3),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgMobile,
                                                  height:
                                                      getVerticalSize(18.00),
                                                  width:
                                                      getHorizontalSize(11.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 22,
                                                      top: 2,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_phone_number".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14Indigo900
                                                          .copyWith()))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 4, right: 9, bottom: 5),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Obx(() => Text(
                                                  controller
                                                      .profileModelObj
                                                      .value
                                                      .mobilenumbervTxt
                                                      .value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.50))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 25,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00)))
                                            ]))
                                  ]))),
                      Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 30, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 1, top: 3, bottom: 1),
                                                child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgVector,
                                                              height: getVerticalSize(
                                                                  19.00),
                                                              width: getHorizontalSize(
                                                                  21.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 17, top: 3),
                                                          child: Text(
                                                              "lbl_assign_devices".tr,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium14Indigo900
                                                                  .copyWith()))
                                                    ])),
                                            Padding(
                                              padding: getPadding(
                                                  top: 5, right: 9, bottom: 6),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(bottom: 1),
                                                        child: Obx(() => Text(
                                                            controller
                                                                .profileModelObj
                                                                .value
                                                                .assignDeviceTxt
                                                                .value,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12
                                                                .copyWith(
                                                                letterSpacing:
                                                                0.50)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 25, top: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height:
                                                            getVerticalSize(12.00),
                                                            width: getHorizontalSize(
                                                                6.00)))
                                                  ]),
                                            )
                                          ]))),
                      Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 30, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 2, top: 1),
                                                child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgClarityassign,
                                                              height: getVerticalSize(
                                                                  21.00),
                                                              width: getHorizontalSize(
                                                                  20.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16, top: 5),
                                                          child: Text(
                                                              "msg_assign_to_emplo".tr,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium14Indigo900
                                                                  .copyWith()))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, right: 9, bottom: 6),
                                                child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(bottom: 1),
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .profileModelObj
                                                                  .value
                                                                  .assignFurnitureTxt
                                                                  .value,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12
                                                                  .copyWith(
                                                                  letterSpacing:
                                                                  0.50)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 25, top: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowright,
                                                              height: getVerticalSize(
                                                                  12.00),
                                                              width: getHorizontalSize(
                                                                  6.00)))
                                                    ]))
                                          ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 30, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 2, top: 2),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgLock,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 18, top: 5),
                                                  child: Text(
                                                      "lbl_change_password".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14Indigo900
                                                          .copyWith()))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 6, right: 9, bottom: 6),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("msg".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing: 0.50)),
                                              Padding(
                                                  padding: getPadding(left: 25),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          6.00)))
                                            ]))
                                  ])))
                    ]))))));
  }

  onTapBtntf() {
    Get.offAndToNamed(AppRoutes.allEmployeeScreen);
  }
}
