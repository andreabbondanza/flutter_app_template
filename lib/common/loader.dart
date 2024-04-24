import 'package:flutter/material.dart';
import 'package:flutter_app_template/components/ui/loader/full_loader_comp.dart';

class Loader {
  static void showLoader(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const FullLoaderComp();
      },
    );
  }

  static void hideLoader(BuildContext context) {
    Navigator.of(context).pop();
  }
}
