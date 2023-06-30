import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray7000f = fromHex('#0f555555');

  static Color gray5001 = fromHex('#f9fbff');

  static Color gray5002 = fromHex('#f8f9fa');

  static Color lightGreenA400 = fromHex('#67ea00');

  static Color red600 = fromHex('#f22929');

  static Color blueA700 = fromHex('#0061ff');

  static Color lightBlue100 = fromHex('#b0e5fc');

  static Color lightGreenA700 = fromHex('#4ec306');

  static Color red200 = fromHex('#fa9a9a');

  static Color blueA100 = fromHex('#80b0ff');

  static Color greenA100 = fromHex('#b5eacd');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#fafcff');

  static Color red100 = fromHex('#ffe1cc');

  static Color black90087 = fromHex('#87000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray700 = fromHex('#535763');

  static Color blueGray900 = fromHex('#262b35');

  static Color deepOrangeA400 = fromHex('#ff4b00');

  static Color deepOrange100 = fromHex('#f0b7b3');

  static Color gray70011 = fromHex('#11555555');

  static Color black90026 = fromHex('#26000000');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color blue700 = fromHex('#1976d2');

  static Color gray800 = fromHex('#424242');

  static Color orangeA700 = fromHex('#ff6700');

  static Color gray900 = fromHex('#2a2a2a');

  static Color orange900 = fromHex('#d55600');

  static Color gray200 = fromHex('#efefef');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e3e4e5');

  static Color blue50 = fromHex('#e0ebff');

  static Color gray100 = fromHex('#f3f4f5');

  static Color black90075 = fromHex('#75000000');

  static Color blueGray1006c = fromHex('#6cd1d3d4');

  static Color black90033 = fromHex('#33000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#424c5d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
