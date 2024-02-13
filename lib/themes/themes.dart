import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(


      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(

          backgroundColor : Colors.transparent,
          centerTitle: true,
          elevation: 0,
      )
  );





  final darkTheme = ThemeData.dark().copyWith(
      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          color: Colors.black54,
          elevation: 0,
          shadowColor: Colors.white10)
  );
}