

import 'package:el_araaf1/core/util/images_manager.dart';
import 'package:el_araaf1/core/util/texts_manager.dart';
import 'package:el_araaf1/core/widgets/custom_text_form_field.dart';
import 'package:el_araaf1/core/widgets/elevated_btn.dart';
import 'package:el_araaf1/core/widgets/text_btn.dart';
import 'package:el_araaf1/ui/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  static const routeName = "SignUp" ;
  GlobalKey<FormState> formState = GlobalKey() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24 , vertical: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                textAlign: TextAlign.center ,
                TextsManager.signUp ,
                style: Theme.of(context).textTheme.headlineMedium ,
              ),
              SizedBox(height: 44.h,) ,
              Image.asset(
                ImagesManager.logo ,
                width: 133.w ,
                height: 177.h ,
              ) ,
              SizedBox(height: 40.h,) ,
              Form(
                key: formState,
                child: Column(
                  children: [
                    CustomTextFormFeild(
                        label: TextsManager.name,
                        hintText: TextsManager.hintName,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return TextsManager.emptyError ;
                          }
                          RegExp nameValidate =  RegExp(r"^[a-zA-Z\s]{3,30}$");
                          if(!nameValidate.hasMatch(value)){
                            return TextsManager.tryAgain ;
                          }return "" ;
                        },
                        keyboardType: TextInputType.text
                    ),
                    SizedBox(height: 20.h,) ,
                    CustomTextFormFeild(
                        hintText: TextsManager.formFieldHint,
                        label: TextsManager.userName,
                        validator: (value){
                          if(value == null || value.isEmpty  ){
                            return TextsManager.emptyError ;
                          }
                          RegExp emailValidate = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") ;
                          if(!emailValidate.hasMatch(value)){
                            return TextsManager.invalidEmail ;
                          }
                          return "" ;
                        } ,
                        keyboardType: TextInputType.emailAddress
                    ),
                    SizedBox(height: 20.h,) ,
                    CustomTextFormFeild(
                      label: TextsManager.password,
                      validator: (value){
                        if(value == null || value.isEmpty  ){
                          return TextsManager.emptyError ;
                        }
                        RegExp passwordValidate = RegExp(
                            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$'
                        );
                        if(!passwordValidate.hasMatch(value)){
                          return TextsManager.invalidPassword ;
                        }
                        return "" ;
                      },
                      keyboardType: TextInputType.visiblePassword ,
                      isPassword: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.h,) ,
              ElevatedBtn(
                  text: TextsManager.create,
                  onPressed: (){
                    if(formState.currentState!.validate()){
                      // Navigator.pushNamed(context, routeName) ;
                    }
                  }),
              SizedBox(height: 12.h,) ,
              TextBtn(
                  buttonName: TextsManager.login,
                  underLine: true,
                  onPressed: (){
                    Navigator.pushNamed(context, Login.routeName) ;
                  })
            ],
          ),
        ),

      ),
    );
  }
}
