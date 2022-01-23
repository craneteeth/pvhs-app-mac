import 'package:application/appBarController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'appInfo.dart';
import 'home.dart';
import 'sns.dart';
import 'calendar.dart';
import 'notification.dart';
import 'counselor.dart';
import 'schoolInfo.dart';
import 'myTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return GetMaterialApp(
            initialBinding: BindingsBuilder((){
              Get.put(appBarController());
            }),
            themeMode: themeProvider.themeMode,
            theme: myTheme.lightTheme,
            darkTheme: myTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/': (context) => home(),
              '/s': (context) => sns(),
              '/c': (context) => calendar(),
              '/n': (context) => notification(),
              '/co': (context) => counselor(),
              '/si': (context) => schoolInfo(),
              '/ai': (context) => appInfo(),
            },
          );
        },
      );
}
