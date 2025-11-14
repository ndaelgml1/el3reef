import 'package:el_araaf1/core/util/colors_manager.dart';
import 'package:el_araaf1/core/util/images_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = "splashScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsManager.white,
      body: Center(
        child: Image.asset(ImagesManager.logo  ),
      ),
    );
  }
}
