import 'package:flutter/material.dart';
import 'package:vgd/presentation/resources/style.dart';
import 'package:vgd/presentation/resources/values.dart';

import 'colors.dart';
import 'fonts.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // main color of app
    primaryColor:  ColorManager.primary,
    primaryColorLight: ColorManager.primary,
    disabledColor: ColorManager.lightGrey,
    accentColor: ColorManager.midGrey,
    // Ripple Color
      splashColor: ColorManager.lightGrey,
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.cardColor,
      shadowColor: ColorManager.darkGrey,
      elevation: AppSize.s4,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primary,
      titleTextStyle: getMediumStyle(color: ColorManager.darkColor,fontSize: FontSize.s20),
    ),
    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.midGrey,
      buttonColor: ColorManager.darkGrey,
      splashColor: ColorManager.lightGrey
    ),

    // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.darkGrey),
        primary: ColorManager.darkGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s8)),
      )
    ),
    //Text Theme
    textTheme: TextTheme(
      headline1: getBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
      subtitle1: getMediumStyle(color: ColorManager.midGrey,fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.darkGrey),
      bodyText1: getRegularStyle(color: ColorManager.darkGrey)
    ),
    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      //hint style
      hintStyle: getRegularStyle(color: ColorManager.darkGrey),
      labelStyle: getMediumStyle(color: ColorManager.midGrey),
      errorStyle: getRegularStyle(color: ColorManager.errorColor),
      // enabled Border
      enabledBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.lightGrey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      // Focus Border
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //Error Color
      errorBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.errorColor,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

    ),

    //Box Decoration

  );
}

BoxDecoration getBoxDecoration(){
  return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          ColorManager.primary,
          ColorManager.midGrey,
        ],
      ),
      borderRadius: BorderRadius.circular(AppSize.s8),
      border: Border.all(color: ColorManager.lightGrey,width: AppSize.s1_5)
  );
}