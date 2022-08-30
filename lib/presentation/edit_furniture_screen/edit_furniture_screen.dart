import 'controller/edit_furniture_controller.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/widgets/custom_button.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';
import 'package:officeinventoryapp/widgets/custom_text_form_field.dart';
import 'package:officeinventoryapp/data/models/furniture/put_furniture_req.dart';
import 'package:officeinventoryapp/core/constants/MyConstant.dart';

enum SelectedFurnitureType { Chair, Table, Shelving, Other }

class EditFurnitureScreen extends GetWidget<EditFurnitureController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                      padding:
                                          getPadding(left: 94, top: 7, bottom: 8),
                                      child: Text("lbl_edit_furniture".tr,
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
                            child: Container(
                                width: double.infinity,
                                margin: getMargin(left: 16, top: 24, right: 16),
                                decoration: AppDecoration.outlineGray70011
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 16, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 3, bottom: 2),
                                                        child: Text("lbl_name".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14
                                                                .copyWith(
                                                                    height:
                                                                        1.00))),
                                                    Text("lbl_required".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14
                                                            .copyWith(
                                                                height: 1.00))
                                                  ]))),
                                      CustomTextFormField(
                                          width: 364,
                                          validator: (value){
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter Furniture name';
                                            }
                                            return null;
                                          },
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.groupFiftySixController3.value,
                                          hintText: "lbl_furniture2".tr,
                                          margin: getMargin(
                                              left: 16, top: 7, right: 16),
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 30, right: 16),
                                          child: Text("lbl_select_type".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold14Black901
                                                  .copyWith())),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 20, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 5),
                                                        child: Text(
                                                            "lbl_furniture_1".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold14
                                                                .copyWith())),
                                                    Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Obx(
                                                                    () => Radio<
                                                                    SelectedFurnitureType>(
                                                                  value:
                                                                  SelectedFurnitureType
                                                                      .Chair,
                                                                  groupValue: controller
                                                                      .furnitureType.value,
                                                                  onChanged: (value) {
                                                                    print(
                                                                        "value is - $value");
                                                                    controller.furnitureType
                                                                        .value = value!;
                                                                  },
                                                                ),
                                                              ),
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 25, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 5),
                                                        child: Text(
                                                            "lbl_furniture_2".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold14
                                                                .copyWith())),
                                                    Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Obx(
                                                                    () => Radio<
                                                                    SelectedFurnitureType>(
                                                                  value:
                                                                  SelectedFurnitureType
                                                                      .Table,
                                                                  groupValue: controller
                                                                      .furnitureType.value,
                                                                  onChanged: (value) {
                                                                    print(
                                                                        "value is - $value");
                                                                    controller.furnitureType
                                                                        .value = value!;
                                                                  },
                                                                ),
                                                              ),
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 25, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 5),
                                                        child: Text(
                                                            "lbl_furniture_3".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold14
                                                                .copyWith())),
                                                    Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Obx(
                                                                    () => Radio<
                                                                    SelectedFurnitureType>(
                                                                  value:
                                                                  SelectedFurnitureType
                                                                      .Shelving,
                                                                  groupValue: controller
                                                                      .furnitureType.value,
                                                                  onChanged: (value) {
                                                                    print(
                                                                        "value is - $value");
                                                                    controller.furnitureType
                                                                        .value = value!;
                                                                  },
                                                                ),
                                                              ),
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 25,
                                                  right: 16,
                                                  bottom: 17),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 5),
                                                        child: Text(
                                                            "lbl_furniture_4".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold14
                                                                .copyWith())),
                                                    Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Obx(
                                                                    () => Radio<
                                                                    SelectedFurnitureType>(
                                                                  value:
                                                                  SelectedFurnitureType
                                                                      .Other,
                                                                  groupValue: controller
                                                                      .furnitureType.value,
                                                                  onChanged: (value) {
                                                                    print(
                                                                        "value is - $value");
                                                                    controller.furnitureType
                                                                        .value = value!;
                                                                  },
                                                                ),
                                                              ),
                                                            ]))
                                                  ])))
                                    ]))),
                        CustomButton(
                            width: 396,
                            text: "lbl_save_changes".tr,
                            margin: getMargin(
                                left: 16, top: 50, right: 16, bottom: 20),
                            onTap: onTapBtnSavechanges,
                            alignment: Alignment.center)
                      ])),
                    )))));
  }

  onTapBtntf() {
    Get.offAndToNamed(AppRoutes.allFurnitureScreen);
  }

  void onTapBtnSavechanges() {
    if(_formKey.currentState!.validate()) {
      PutFurnitureReq putFurnitureReq = PutFurnitureReq(
        records: [
          Records(
            id: Get.find<PrefUtils>().getFurnitureRecordId(),
            fields: Fields(
              furnitureName: controller.groupFiftySixController3.value.text,
              type: controller.furnitureType.value.name,
              employee: [MyConstant.recordId],
            ),
          )
        ],
      );
      controller.callUpdateFurniture(
        putFurnitureReq.toJson(),
        successCall: _onUpdateFurnitureSuccess,
        errCall: _onUpdateFurnitureError,
      );
    }
  }

  void _onUpdateFurnitureSuccess() {
    Get.offAndToNamed(AppRoutes.allFurnitureScreen);
  }

  void _onUpdateFurnitureError() {
    Get.snackbar('', "Furniture Not Edited");
  }
}
