import 'package:flutter/material.dart';

SnackBar customSnackBar(String text) {
  return SnackBar(
    content: Text(
      text,
      style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    backgroundColor: Colors.amberAccent,
    duration: const Duration(seconds: 1),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    shape: StadiumBorder(),
    behavior: SnackBarBehavior.floating,
  );
}
