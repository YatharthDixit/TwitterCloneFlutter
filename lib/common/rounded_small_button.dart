import 'package:flutter/material.dart';

import '../theme/pallete.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String lable;
  final Color backgroundColor;
  final Color fontColor;

  const RoundedSmallButton({
    super.key,
    required this.lable,
    this.backgroundColor = Pallete.whiteColor,
    this.fontColor = Pallete.backgroundColor,
    required this.onTap,
  });
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        label: Text(
          lable,
          style: TextStyle(color: fontColor, fontSize: 17),
        ),
        backgroundColor: backgroundColor,
        labelPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      ),
    );
  }
}
