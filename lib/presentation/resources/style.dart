import 'package:flutter/material.dart';

import 'fonts.dart';


TextStyle _getTextStyle(double fontSize,String fontFamily,FontWeight fontWeight,Color color){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight
  );
}

TextStyle getRegularStyle({double fontSize = FontSize.s14, required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.regular, color);
}

//light text style
TextStyle getLightStyle({double fontSize = FontSize.s14, required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.light, color);
}

// Medium Text Style
TextStyle getMediumStyle({double fontSize = FontSize.s14, required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.medium, color);
}

// Bold Text Style
TextStyle getBoldStyle({double fontSize = FontSize.s14, required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.bold, color);
}