import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class myTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff282727),
    indicatorColor: Color(0xff780202),
    canvasColor: Colors.black,
    primaryColor: Colors.black87,
    backgroundColor: Colors.white,
    focusColor: Color(0xffe21c1c),
    iconTheme: IconThemeData(color: Colors.white60),
    colorScheme: ColorScheme.dark(),
    cardColor: Colors.black,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w500,
          fontSize: 30,
          foreground: Paint()
            ..shader = ui.Gradient.linear(
              Offset(0, 50),
              Offset(100, 50),
              <Color>[
                Color(0xff630404),
                Color(0xffe73232),
              ],
            )),
      headline2: TextStyle(
        foreground: Paint()
          ..shader = ui.Gradient.linear(
            Offset(0, 20),
            Offset(400, 20),
            <Color>[
              Color(0xfff1e2e2),
              Color(0xffe51313),
            ],
          ),
        fontSize: 25,
        letterSpacing: 2.0,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          letterSpacing: 0.5),
    ),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    indicatorColor: Color(0xffdb2727),
    canvasColor: Colors.white70,
    primaryColor: Colors.red,
    backgroundColor: Colors.black,
    focusColor: Colors.white,
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.grey),
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30,
          foreground: Paint()
            ..shader = ui.Gradient.linear(
              Offset(0, 50),
              Offset(100, 50),
              <Color>[
                Color(0xff070000),
                Color(0xffefe7e7),
              ],
            )),
      headline2: TextStyle(
        foreground: Paint()
          ..shader = ui.Gradient.linear(
            Offset(0, 100),
            Offset(400, 100),
            <Color>[
              Colors.black,
              Color(0xffe51313),
            ],
          ),
        fontSize: 25,
        letterSpacing: 2.0,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 15,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 20,
        letterSpacing: 0.5,
      ),
    ),
  );
}

class ThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
