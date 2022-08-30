import 'package:officeinventoryapp/core/constants/MyConstant.dart';

import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';
import 'package:officeinventoryapp/core/utils/validation_functions.dart';
import 'package:officeinventoryapp/widgets/custom_button.dart';
import 'package:officeinventoryapp/widgets/custom_text_form_field.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlueA200,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: getSize(
                        110.00,
                      ),
                      width: getSize(
                        110.00,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 138,
                        right: 16,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.whiteA700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  all: 30,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgVector40stro,
                                  height: getSize(
                                    48.00,
                                  ),
                                  width: getSize(
                                    48.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 26,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_welcome".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        right: 16,
                      ),
                      child: Text(
                        "msg_sign_in_to_cont".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Gray50.copyWith(),
                      ),
                    ),
                    CustomTextFormField(
                      width: 396,
                      focusNode: FocusNode(),
                      controller: controller.emailController,
                      hintText: "lbl_your_email".tr,
                      margin: getMargin(
                        left: 16,
                        top: 101,
                        right: 16,
                      ),
                      variant: TextFormFieldVariant.OutlineBlue50,
                      padding: TextFormFieldPadding.PaddingT23,
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 22,
                          right: 12,
                          bottom: 22,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgMail,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          15.00,
                        ),
                        minHeight: getSize(
                          15.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: 396,
                      focusNode: FocusNode(),
                      controller: controller.passwordController,
                      hintText: "lbl_password".tr,
                      margin: getMargin(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      variant: TextFormFieldVariant.OutlineBlue50,
                      padding: TextFormFieldPadding.PaddingT23,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 20,
                          right: 12,
                          bottom: 20,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgLock20X20,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          20.00,
                        ),
                        minHeight: getSize(
                          20.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true,
                    ),
                    CustomButton(
                      width: 396,
                      text: "lbl_sign_in".tr,
                      margin: getMargin(
                        left: 16,
                        top: 154,
                        right: 16,
                        bottom: 20,
                      ),
                      onTap: onClickEvent,
                      variant: ButtonVariant.FillIndigo900,
                      padding: ButtonPadding.PaddingAll19,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onClickEvent() {
    if(_formKey.currentState!.validate()){
      if(controller.emailController.value.text == MyConstant.username && controller.passwordController.value.text == MyConstant.password){
        Get.find<PrefUtils>().setEmail(controller.emailController.value.text);
        Get.find<PrefUtils>().setPassword(controller.passwordController.value.text);
        Get.snackbar('', "Login Successful");
        Get.offNamed(AppRoutes.categoryScreen);
      }
    }
  }

}
