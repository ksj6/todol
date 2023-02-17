// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todol/newlist.dart';
import 'package:todol/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Go to Home Page',
    initialRoute: HomePage.id,
    routes: {
      Newlist.id: (context) => Newlist(),
      HomePage.id: (context) => HomePage(),
    },
  ));
}
