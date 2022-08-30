import '../all_employee_screen/widgets/listemployeecounter_item_widget.dart';
import 'controller/all_employee_controller.dart';
import 'models/listemployeecounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';

class AllEmployeeScreen extends GetWidget<AllEmployeeController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 16, top: 20, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    padding: getPadding(top: 10, bottom: 3),
                                    child: Text("lbl_employees".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20
                                            .copyWith())),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    onTap: () {
                                      onTapBtntf1();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgMap))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 24, right: 16, bottom: 6),
                          child: Obx(() => controller.allEmployeeModelObj.value
                                  .listemployeecounterItemList.isNotEmpty
                              ? ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.allEmployeeModelObj
                                      .value.listemployeecounterItemList.length,
                                  itemBuilder: (context, index) {
                                    ListemployeecounterItemModel model =
                                        controller.allEmployeeModelObj.value
                                            .listemployeecounterItemList[index];
                                    return GestureDetector(
                                      onTap: () {
                                        //perform action
                                        print('item clicked : ${index}');
                                      },
                                      child: ListemployeecounterItemWidget(
                                        model,
                                      ),
                                    );
                                  })
                              : Center(child: CircularProgressIndicator())))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtntf1() {
    Get.offAndToNamed(AppRoutes.addEmployeeScreen);
  }
}
