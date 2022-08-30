import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll27:
        return getPadding(
          all: 27,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineGray70011:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillLightblueA200:
        return ColorConstant.lightBlueA200;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineGray70011:
        return [
          BoxShadow(
            color: ColorConstant.gray70011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          )
        ];
      case IconButtonVariant.FillLightblueA200:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.black9000a,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          )
        ];
    }
  }
}

enum IconButtonShape {
  RoundedBorder10,
  RoundedBorder16,
}

enum IconButtonPadding {
  PaddingAll9,
  PaddingAll27,
}

enum IconButtonVariant {
  OutlineBlack9000a,
  OutlineGray70011,
  FillLightblueA200,
}
