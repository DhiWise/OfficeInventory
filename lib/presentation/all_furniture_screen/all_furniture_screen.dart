import '../all_furniture_screen/widgets/listfurniturecounter_item_widget.dart';
import 'controller/all_furniture_controller.dart';
import 'models/listfurniturecounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';

class AllFurnitureScreen extends GetWidget<AllFurnitureController> {
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
                                    padding: getPadding(top: 7, bottom: 8),
                                    child: Text("lbl_furniture2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20
                                            .copyWith())),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    variant: IconButtonVariant.OutlineGray70011,
                                    onTap: () {
                                      onTapBtntf1();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgPlus))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 24, right: 16, bottom: 6),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.allFurnitureModelObj.value
                                  .listfurniturecounterItemList.length,
                              itemBuilder: (context, index) {
                                ListfurniturecounterItemModel model = controller
                                    .allFurnitureModelObj
                                    .value
                                    .listfurniturecounterItemList[index];
                                return ListfurniturecounterItemWidget(model);
                              })))
                    ]))))));
  }


  onTapBtntf() {
    Get.back();
  }

  onTapBtntf1() {
    Get.offAndToNamed(AppRoutes.addFurnitureScreen);
  }
}
