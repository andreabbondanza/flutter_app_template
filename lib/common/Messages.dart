import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Messages {
  static void showInfo(String msg, {bool isShort = false}) =>
      Fluttertoast.showToast(
          msg: msg,
          toastLength: isShort ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.orange,
          textColor: Colors.white,
          fontSize: 16.0);

  static void showSuccess(String msg, {bool isShort = false}) =>
      Fluttertoast.showToast(
          msg: msg,
          toastLength: isShort ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green[800],
          textColor: Colors.white,
          fontSize: 16.0);

  static void showError(String msg, {bool isShort = false}) =>
      Fluttertoast.showToast(
          msg: msg,
          toastLength: isShort ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[800],
          textColor: Colors.white,
          fontSize: 16.0);
}
