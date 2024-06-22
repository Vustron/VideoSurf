import 'package:flutter/material.dart';

// colors
const Color softBlueGreyBackGround = Color(0xffF2F2F2);
const Color kDeepGreyFont = Color(0xff606060);

// error snackbar
void showErrorSnackBar(String message, context) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
