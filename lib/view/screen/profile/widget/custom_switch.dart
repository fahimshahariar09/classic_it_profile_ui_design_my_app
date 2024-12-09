import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.onTap, this.value});

  final VoidCallback onTap;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: value.value == false
              ? AppColors.bg1LightColor
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.transparent),
        ),
      ),
    );
  }
}
