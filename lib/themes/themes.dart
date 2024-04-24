import 'package:flutter/material.dart';

// create a flutter theme based on orange and black colors

final ThemeData mainTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.orange,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.orange,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      centerTitle: true,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.orange,
      textTheme: ButtonTextTheme.primary,
    ),
    cardTheme: CardTheme(
      surfaceTintColor: Colors.white,
      color: const Color.fromARGB(255, 245, 241, 235),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    fontFamily: 'Montserrat');
