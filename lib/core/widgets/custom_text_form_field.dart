import 'package:el_araaf1/core/util/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFeild extends StatefulWidget {
  CustomTextFormFeild({
    super.key,
    this.hintText,
    required this.label,
    this.isPassword = false,
    required this.validator,
    required this.keyboardType,
  });
  String? hintText;
  String label;
  bool isPassword;
  String Function(String?)? validator;
  TextInputType keyboardType;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:  GoogleFonts.beiruti(
        fontWeight: FontWeight.w400 ,
        fontSize: 18 ,
        color: ColorsManager.darkBlue ,
      ),
      // Theme.of(context).textTheme.bodyMedium,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: widget.isPassword ? obscure : false ,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
        label: Text(widget.label),
        labelStyle: GoogleFonts.beiruti(
          fontWeight: FontWeight.w400 ,
          fontSize: 18 ,
          color: ColorsManager.slateGray ,
        ),
        //Theme.of(context).textTheme.bodySmall,
        border: Theme.of(context).inputDecorationTheme.border ,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: ColorsManager.platinum),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: ColorsManager.platinum),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: ColorsManager.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(color: ColorsManager.red),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
          icon: obscure
              ? Icon(
            Icons.visibility_off_outlined,
            color: Theme.of(context).colorScheme.tertiary,
          )
              : Icon(
            Icons.visibility_outlined,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        )
            : null,
      ),
    );
  }
}
