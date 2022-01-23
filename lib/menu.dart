import 'package:application/myTheme.dart';
import 'package:application/schoolInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'appInfo.dart';
import 'counselor.dart';
import 'main.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
      child: Drawer(
        child: Container(
          color: Theme.of(context).indicatorColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: Image.asset('assets/pvhsLogo.png'),
              ),
              ListTile(
                title: const Text(
                  'counselor',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => counselor(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
              ),
              const Divider(),
              /*ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                dense: true,
                title: const Text(
                  'staff',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),*/
              ListTile(
                dense: true,
                title: const Text(
                  'school info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => schoolInfo(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'app info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => appInfo(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'dark mode',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: ThemeButton(),
                onTap: () {
                },
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
