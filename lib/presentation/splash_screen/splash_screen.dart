import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/widgets/custom_icon_button.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                      Container(
                          width: getHorizontalSize(167.00),
                          margin: getMargin(left: 113, top: 228, right: 113),
                          child: Text("msg_office_inventor".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold34
                                  .copyWith(height: 1.18))),
                      CustomIconButton(
                          height: 98,
                          width: 98,
                          margin: getMargin(left: 113, top: 82, right: 113),
                          variant: IconButtonVariant.FillLightblueA200,
                          shape: IconButtonShape.RoundedBorder16,
                          padding: IconButtonPadding.PaddingAll27,
                          child: CommonImageView(
                              svgPath: ImageConstant.imgVector40stroWhiteA700)),
                      Container(
                          width: getHorizontalSize(204.00),
                          margin: getMargin(
                              left: 113, top: 86, right: 109, bottom: 20),
                          child: Text("msg_manage_your_off".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium14Black901
                                  .copyWith(height: 1.64)))
                    ]))))));
  }
}
