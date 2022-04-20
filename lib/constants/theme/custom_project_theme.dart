import 'package:flutter/material.dart';

class CustomProjectTheme {
  // TODO: custom-color-theme(key)
  Color? backgroundColor,
      appBarColor,
      unFocusPopupOverlayColor,
      textFieldBackground,
      hintTextOnTextField,
      btnAColor,
      btnBColor,
      btnCColor,
      unselectedItemTextColor,
      unselectedItemColor;
  // ...

  static CustomProjectTheme getCustomProjectThemeDefault() {
    CustomProjectTheme customProjectTheme = CustomProjectTheme();

    // TODO: custom-color-theme(value)
    customProjectTheme.backgroundColor = const Color(0xff623FC3);
    customProjectTheme.appBarColor = const Color(0xff623FC3);
    customProjectTheme.unFocusPopupOverlayColor = const Color(0xff343940);
    customProjectTheme.textFieldBackground = const Color(0xff343940);
    customProjectTheme.hintTextOnTextField = const Color(0xff343940);
    customProjectTheme.btnAColor = const Color(0xff343940);
    customProjectTheme.btnBColor = const Color(0xff343940);
    customProjectTheme.btnCColor = const Color(0xff343940);
    customProjectTheme.unselectedItemTextColor = const Color(0xff343940);
    customProjectTheme.unselectedItemColor = const Color(0xff343940);
    // ...

    return customProjectTheme;
  }
  
  static CustomProjectTheme getCustomProjectThemeA() {
    CustomProjectTheme customProjectTheme = CustomProjectTheme();

    // TODO: custom-color-theme(A)
    // ...

    return customProjectTheme;
  }
  static CustomProjectTheme getCustomProjectThemeB() {
    CustomProjectTheme customProjectTheme = CustomProjectTheme();

    // TODO: custom-color-theme(B)
    // ...

    return customProjectTheme;
  }
}

// use-with: 
/*
CustomProjectTheme customProjectTheme = CustomProjectTheme.getCustomProjectThemeDefault();

...

appBar: AppBar(
          backgroundColor: customChatTheme.appBarColor,
          title: ...,
  ),
*/
