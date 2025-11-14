import 'package:el_araaf1/core/util/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: ColorsManager.black,
      secondary: ColorsManager.darkBlue,
      onSecondary: ColorsManager.white ,
      tertiary: ColorsManager.blueGray ,
      onSurface: ColorsManager.ashGray ,


    ),
    scaffoldBackgroundColor: ColorsManager.white
    ,textTheme: TextTheme(
    bodyMedium: GoogleFonts.beiruti(
      fontWeight: FontWeight.w400 ,
      fontSize: 18 ,
      color: ColorsManager.darkBlue ,
    ),
    bodySmall: GoogleFonts.beiruti(
      fontWeight: FontWeight.w400 ,
      fontSize: 18 ,
      color: ColorsManager.slateGray ,
    ),
    headlineMedium: GoogleFonts.beiruti(
      fontWeight: FontWeight.w500 ,
      fontSize: 22 ,
      color: ColorsManager.black ,
    ),
    labelMedium:GoogleFonts.beiruti(
      fontWeight: FontWeight.w500 ,
      fontSize: 18 ,
      color: ColorsManager.darkBlue ,

    ),
    labelLarge:GoogleFonts.beiruti(
      fontWeight: FontWeight.w600 ,
      fontSize: 18 ,
      color: ColorsManager.white ,

    ),

  ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
            color: ColorsManager.platinum
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
            color: ColorsManager.platinum
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
            color: ColorsManager.platinum
        ),

      ),
      errorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
            color: ColorsManager.red
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
            color: ColorsManager.red
        ),
      ),
      labelStyle: GoogleFonts.beiruti(
        fontWeight: FontWeight.w500 ,
        fontSize: 18 ,
        color: ColorsManager.slateGray ,
      ) ,
      hintStyle:  GoogleFonts.beiruti(
        fontWeight: FontWeight.w500 ,
        fontSize: 20 ,
        color: ColorsManager.ashGray ,
      ) ,
    ),

  ) ;
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: ColorsManager.white,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.beiruti(
        fontWeight: FontWeight.w400 ,
        fontSize: 18 ,
        color: ColorsManager.darkBlue ,
      ),



    ),

  ) ;
}