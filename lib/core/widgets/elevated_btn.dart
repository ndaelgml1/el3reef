

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedBtn extends StatelessWidget {
  ElevatedBtn({
    super.key,
    required this.text,
    required this.onPressed
  });
  String text ;
  Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 13),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge,


        ),
      ) ,
    );
  }
}
