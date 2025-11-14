import 'package:el_araaf1/core/util/colors_manager.dart';
import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  TextBtn({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.underLine = false,
  });
  String buttonName;
  void Function()? onPressed;
  bool underLine;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
            decoration: underLine ? TextDecoration.underline : null,
            decorationColor: ColorsManager.darkBlue ,
            decorationThickness: 1.5
        ),
      ),
    );
  }
}
