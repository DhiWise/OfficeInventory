import 'package:officeinventoryapp/presentation/add_employee_screen/models/add_employee_model.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/rowDeviceItemModel.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/models/rowFurnitureItemModel.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/widgets/rowDeviceItemWidget.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/widgets/rowFurnitureItemWidget.dart';

import 'controller/add_employee_controller.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/core/utils/validation_functions.dart';
import 'package:officeinventoryapp/widgets/custom_button.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';
import 'package:officeinventoryapp/widgets/custom_text_form_field.dart';
import 'package:officeinventoryapp/data/models/employee/post_employee_req.dart';

// ignore_for_file: must_be_immutable
class AddEmployeeScreen extends GetWidget<AddEmployeeController> {
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
                                  margin:
                                      getMargin(left: 16, top: 20, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomIconButton(
                                            height: 36,
                                            width: 36,
                                            onTap: () {
                                              onTapBtntf();
                                            },
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleft)),
                                        Padding(
                                            padding: getPadding(
                                                left: 88, top: 10, bottom: 3),
                                            child: Text("lbl_add_employee".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20
                                                    .copyWith())),
                                        Container(
                                            height: 36,
                                            width: 36),
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                          left: 16, top: 24, right: 16),
                                      decoration: AppDecoration.outlineGray70011
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 16,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3,
                                                                      bottom:
                                                                          2),
                                                              child: Text(
                                                                  "lbl_name".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 364,
                                                validator: (value){
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter Name';
                                                  }
                                                  return null;
                                                },
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .groupFiftySixController2,
                                                hintText: "lbl_name".tr,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 7,
                                                    right: 16),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 16,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_email"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 364,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .groupFiftySixOneController,
                                                hintText: "lbl_email2".tr,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 7,
                                                    right: 16),
                                                alignment: Alignment.center,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 16,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_phone"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            CustomTextFormField(
                                              inputType: TextInputType.number,
                                                width: 364,
                                                validator: (value){
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter Phone';
                                                  }
                                                  return null;
                                                },
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .groupFiftySixTwoController,
                                                hintText: "lbl_phone".tr,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 7,
                                                    right: 16),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 20,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_role".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            CustomTextFormField(
                                                validator: (value){
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter Role';
                                                  }
                                                  return null;
                                                },
                                                width: 364,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .groupFiftySixThreeController,
                                                hintText: "lbl_role2".tr,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 7,
                                                    right: 16),
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 16,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_device2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            Container(

                                                alignment: Alignment.center,
                                                height: getVerticalSize(74.00),
                                                width: 364,
                                                child: Obx(
                                                  () => ListView.builder(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 16,
                                                          right: 16,
                                                          bottom: 16),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      itemCount: controller
                                                          .addEmployeeModelObj
                                                          .value
                                                          .rowDeviceItemList
                                                          .value
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        RowDeviceItemModel
                                                            model = controller
                                                                .addEmployeeModelObj
                                                                .value
                                                                .rowDeviceItemList
                                                                .value[index];
                                                        return RowDeviceItemWidgets(
                                                            model);
                                                      }),
                                                )),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 16,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_furniture"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Text(
                                                              "lbl_required".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))
                                                        ]))),
                                            Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(74.00),
                                                width: 364,
                                                child: Obx(
                                                  () => ListView.builder(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 16,
                                                          right: 16,
                                                          bottom: 16),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      itemCount: controller
                                                          .addEmployeeModelObj
                                                          .value
                                                          .rowFurnitureItemList
                                                          .value
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        RowFurnitureItemModel
                                                            model = controller
                                                                .addEmployeeModelObj
                                                                .value
                                                                .rowFurnitureItemList
                                                                .value[index];
                                                        return RowFurnitureItemWidgets(
                                                            model);
                                                      }),
                                                )),
                                          ]))),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_add_employee".tr,
                                  margin: getMargin(
                                      left: 16, top: 50, right: 16, bottom: 20),
                                  // onTap: onTapBtnllllllllll,
                                  onTap: onTapBtnAddemployee,
                                  alignment: Alignment.center)
                            ])))))));
  }

  onTapBtntf() {
    Get.offAndToNamed(AppRoutes.allEmployeeScreen);
  }

  void onTapBtnAddemployee() {
    if(_formKey.currentState!.validate()) {
      List<RowDeviceItemModel> rowDeviceItemModel = [];
      List<RowFurnitureItemModel> rowFurnitureItemModel = [];

      List<String> selectedDevices = [];
      List<String> selectedFurniture = [];

      rowDeviceItemModel.addAll(controller
          .addEmployeeModelObj.value.rowDeviceItemList
          .where((item) => item.isSelected.value));

      for (var element in rowDeviceItemModel) {
        selectedDevices.add(element.deviceRecordId.value);
      }

      rowFurnitureItemModel.addAll(controller
          .addEmployeeModelObj.value.rowFurnitureItemList
          .where((item) => item.isSelected.value));

      for (var element in rowFurnitureItemModel) {
        selectedFurniture.add(element.furnitureRecordId.value);
      }

      if(selectedDevices.length > 0 && selectedFurniture.length >0 ) {
        PostEmployeeReq postEmployeeReq = PostEmployeeReq(
          records: [
            Records(
              fields: Fields(
                  name: controller.groupFiftySixController2.text,
                  role: controller.groupFiftySixThreeController.text,
                  phone: controller.groupFiftySixTwoController.text,
                  email: controller.groupFiftySixOneController.text,
                  devices: selectedDevices,
                  furniture: selectedFurniture
              ),
            )
          ],
        );
        controller.callCreateEmployee(
          postEmployeeReq.toJson(),
          successCall: _onCreateEmployeeSuccess,
          errCall: _onCreateEmployeeError,
        );
      }
      else{
        Get.snackbar('', "Select one Device & Furniture");
      }
    }
  }

  void _onCreateEmployeeSuccess() {
    Get.snackbar('', "Employee Added");
    Get.offAndToNamed(AppRoutes.allEmployeeScreen);
  }

  void _onCreateEmployeeError() {
    Get.snackbar('', "Employee Not Added");
  }

}

