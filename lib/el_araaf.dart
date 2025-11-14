import 'package:el_araaf1/core/util/theme_manager.dart';
import 'package:el_araaf1/ui/login/login.dart';
import 'package:el_araaf1/ui/signup/sign_up.dart';
import 'package:el_araaf1/ui/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElAraaf extends StatelessWidget {
  const ElAraaf({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_ , child){
          return MaterialApp(
            theme: ThemeManager.lightTheme,
            darkTheme: ThemeManager.darkTheme,
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            routes: {
              SplashScreen.routeName : (_)=> SplashScreen() ,
              Login.routeName : (context) => Login(),
              SignUp.routeName : (context)=> SignUp() ,
            }
            ,
            initialRoute: SignUp.routeName ,

          );
        }


    );
  }
}
