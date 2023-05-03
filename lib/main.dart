import 'package:flutter/material.dart';
import 'package:project_1/pages/Regestry.dart';
import 'package:project_1/pages/Dreams/DreamsAll.dart';
import 'package:project_1/pages/Dreams/Dreamsfinished.dart';
import 'package:project_1/pages/Dreams/Dreamsinprogress.dart';
import 'package:project_1/pages/categories.dart';
import 'package:project_1/pages/review.dart';
import 'package:project_1/pages/settings.dart';







void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.deepPurple
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Regestry(),
      '/DreamsAll': (context) => DreamsAll(),
      '/Dreamsinprogress': (context) => Dreamsinprogress(),
      '/Dreamsfinished':(context) => Dreamsfinished(),
      '/settings':(context) => settings(),
      '/review':(context) => review(),
      '/categories':(context) => categories(),
    },

  ),
  );
}