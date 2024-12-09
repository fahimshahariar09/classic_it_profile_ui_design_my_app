import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
    );
  }
}
