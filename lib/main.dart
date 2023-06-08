import 'package:flutter/material.dart';
import 'package:project_1/pages/Regestry.dart';
import 'package:project_1/pages/Dreams/DreamsAll.dart';
import 'package:project_1/pages/Dreams/DreamsAdd.dart';
import 'package:project_1/pages/categories.dart';
import 'package:project_1/pages/review.dart';
import 'package:project_1/pages/settings.dart';
import 'package:project_1/pages/Dreams/dream_list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => DreamListProvider(),

    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Regestry(),
        '/DreamsAll': (context) => DreamsAll(),
        '/DreamsAdd': (context) => DreamsAdd(),
        '/settings': (context) => settings(),
        '/review': (context) => review(),
        '/categories': (context) => categories(),
      },
    ),
  ));
}
