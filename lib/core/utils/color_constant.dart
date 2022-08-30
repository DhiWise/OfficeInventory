import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color black9000a = fromHex('#0a000000');

  static Color bluegray50 = fromHex('#eaecf0');

  static Color black900A2 = fromHex('#a2040404');

  static Color blue500 = fromHex('#18a0fb');

  static Color gray900 = fromHex('#1e2022');

  static Color newGray900 = fromHex('#1b1b1b');

  static Color newGray900New = fromHex('#b0b0b0');

  static Color lightBlueA200 = fromHex('#40bfff');

  static Color gray50 = fromHex('#fafafa');

  static Color blue50 = fromHex('#eaefff');

  static Color black90087 = fromHex('#87000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#9098b1');

  static Color black901 = fromHex('#000000');

  static Color indigo900 = fromHex('#223263');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11555555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
