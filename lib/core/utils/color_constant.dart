import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#cacaca');

  static Color blueGray100 = fromHex('#d8d8d8');

  static Color blueGray300 = fromHex('#9098a6');

  static Color blueA100 = fromHex('#709dff');

  static Color blueA200 = fromHex('#4182ff');

  static Color teal50 = fromHex('#cde8f4');

  static Color black9003f = fromHex('#3f000000');

  static Color greenA200 = fromHex('#86f898');

  static Color gray50 = fromHex('#fafafa');

  static Color blueGray9009e = fromHex('#9e18243e');

  static Color indigo100 = fromHex('#c1cbdb');

  static Color greenA20001 = fromHex('#87f999');

  static Color black90001 = fromHex('#040509');

  static Color black900 = fromHex('#000000');

  static Color blueA20002 = fromHex('#5281f9');

  static Color blueA20001 = fromHex('#4077f7');

  static Color bluegray400 = fromHex('#888888');

  static Color lightBlueA700 = fromHex('#0096ff');

  static Color blue100 = fromHex('#c2e4fc');

  static Color blue10001 = fromHex('#c2e5fa');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
