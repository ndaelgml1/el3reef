import 'package:el_araaf1/core/util/images_manager.dart';
import 'package:el_araaf1/core/util/texts_manager.dart';
import 'package:el_araaf1/core/widgets/custom_text_form_field.dart';
import 'package:el_araaf1/core/widgets/elevated_btn.dart';
import 'package:el_araaf1/core/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String routeName = "login" ;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formState = GlobalKey() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: REdgeInsets.symmetric(vertical: 45 , horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  TextsManager.login ,
                  style: Theme.of(context).textTheme.headlineMedium ,
                  textAlign: TextAlign.center ,
                ),
                Image.asset(
                  ImagesManager.logo ,
                  width: 133.w ,
                  height: 177.h ,
                ) ,
                Form(
                  key: formState ,
                  child: Column(
                    children: [
                      CustomTextFormFeild(
                          hintText: TextsManager.formFieldHint,
                          label: TextsManager.userName,
                          validator: (value){
                            if(value == null || value.isEmpty  ){
                              return TextsManager.emptyError ;
                            }
                            RegExp emailValidate = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") ;
                            if(!emailValidate.hasMatch(value)){
                              return TextsManager.invalidEmail ;
                            }
                            return "" ;
                          } ,
                          keyboardType: TextInputType.emailAddress
                      ),
                      SizedBox(height: 24.h,) ,
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
                SizedBox(height: 14.h,),
                Align(
                  alignment: Alignment.centerLeft ,
                  child: TextBtn(
                      buttonName: TextsManager.forgetPassword,
                      onPressed: (){
                        //  Navigator.of(context).pushNamed(routeName)
                      }),
                ) ,
                SizedBox(height: 16.h,),
                ElevatedBtn(
                    text: TextsManager.login,
                    onPressed: (){
                      if(formState.currentState!.validate()){
                        // Navigator.of(context).pushNamed(routeName);
                      }else {
                        return TextsManager.tryAgain;
                      }
                    }
                ),
                SizedBox(height: 14.h,),
                TextBtn(
                    underLine: true,
                    buttonName: TextsManager.createAccount,
                    onPressed: (){
                      //  Navigator.of(context).pushNamed(routeName)
                    }),


              ],
            ),
          )),
    );
  }
}
