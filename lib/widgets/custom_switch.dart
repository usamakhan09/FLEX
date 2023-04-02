import 'package:flex2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(30),
        width: getHorizontalSize(70),
        toggleSize: 21,
        borderRadius: getHorizontalSize(
          15.00,
        ),
        activeColor: ColorConstant.blueA200,
        activeToggleColor: ColorConstant.blueA100,
        inactiveColor: ColorConstant.whiteA700,
        inactiveToggleColor: ColorConstant.blueGray100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
