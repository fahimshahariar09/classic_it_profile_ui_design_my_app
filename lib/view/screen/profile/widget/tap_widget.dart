import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class TapWidget extends StatelessWidget {
  const TapWidget(
      {super.key,
      required this.onTap,
      this.value,
      required this.selectedIndex,
      required this.titel});

  final VoidCallback onTap;
  final dynamic value;
  final int selectedIndex;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: value.value == selectedIndex
            ? AppColors.bgLightColor
            : AppColors.bg1LightColor,
        margin: EdgeInsets.zero,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.transparent)),
        child: SizedBox(
          height: 400,
          width: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              value.value == selectedIndex
                  ? const Icon(Icons.check_box_rounded,
                      size: 20, color: AppColors.bg1LightColor)
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
