import 'package:flutter/material.dart';

Widget loadingWiget() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircularProgressIndicator(
        color: Colors.white,
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Loading",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
