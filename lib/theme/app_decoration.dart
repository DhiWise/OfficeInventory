import 'package:flutter/material.dart';
import 'package:officeinventoryapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillBluegray50 => BoxDecoration(
        color: ColorConstant.bluegray50,
      );
  static BoxDecoration get outlineGray70011 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
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
          ),
        ],
      );
  static BoxDecoration get fillBlue500 => BoxDecoration(
        color: ColorConstant.blue500,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillLightblueA200 => BoxDecoration(
        color: ColorConstant.lightBlueA200,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius circleBorder45 = BorderRadius.circular(
    getHorizontalSize(
      45.00,
    ),
  );

  static BorderRadius txtCircleBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19.00,
    ),
  );
}
