import 'package:application/sns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'calendar.dart';
import 'home.dart';
import 'menu.dart';

class schoolInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const menu(),
      appBar: const NewBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                'School Info',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).backgroundColor,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Palos Verdes High School',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '600 Cloyden Road',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Palos Verdes Estates, CA 90274',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Telephone: ',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(
                      height: 25,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center),
                        onPressed: () {
                          _call('3103788471');
                        },
                        child: Text(
                          '310-378-8471',
                          style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.redAccent,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fax: ',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(
                      height: 25,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center),
                        onPressed: () {
                          _call('3103780311');
                        },
                        child: Text(
                          '310-378-0311',
                          style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.redAccent,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CEEB Code: ',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      '052358',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              child: Image.asset(
                'assets/map.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewBar extends StatelessWidget implements PreferredSizeWidget {
  const NewBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        new Container(),
      ],
      automaticallyImplyLeading: false,
      toolbarHeight: 75,
      backgroundColor: Theme.of(context).primaryColor,
      title: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'PVHS',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  //color: Color(0xffe21c1c),
                  color: Theme.of(context).iconTheme.color,
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            home(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                ),
                IconButton(
                  color: Theme.of(context).iconTheme.color,
                  icon: const Icon(Icons.group_outlined),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => sns(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                ),
                IconButton(
                  color: Theme.of(context).iconTheme.color,
                  icon: const Icon(Icons.event_note_outlined),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            calendar(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                ),
                /*IconButton(
                  color: Theme.of(context).iconTheme.color,
                  icon: const Icon(Icons.notification_add_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/n');
                  },
                ),*/
                IconButton(
                  color: Theme.of(context).focusColor,
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(75);
}

_call(String c) async {
  var uri = 'tel:$c';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not call to $uri';
  }
}
