import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

flutterToast({
  required String title,
  required String msg,
  required BuildContext context,
  required bool isSuccess
  }) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    margin: EdgeInsets.only(top: 20,bottom: 25),
    dismissDirection: DismissDirection.up,
    duration: Duration(milliseconds: 2000),
    content: AwesomeSnackbarContent(
      title: title,
      message: msg,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: (isSuccess )? ContentType.success : ContentType.failure,
    ),
  ));


}