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

class counselor extends StatelessWidget {
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
                'Counselor',
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
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/stalpleton.jpg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mrs. Paula Stapleton',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Gr. 9-12: A-Da',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43220',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('stapletonp@pvpusd.net');
                                    },
                                    child: Text(
                                      'stapletonp@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 52,
                    ),
                    Image.asset(
                      'assets/lichter.jpg',
                      height: 110,
                    ),
                    Container(
                      width: 27,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Ms. Megan Lichter',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Gr. 9-12: De-H',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43246',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('lichterm@pvpusd.net');
                                    },
                                    child: Text(
                                      'lichterm@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/nelson.jpg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mrs. Kristen Nelson',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Gr. 9-12: I-Mc',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43293',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('nelsonk@pvpusd.net');
                                    },
                                    child: Text(
                                      'nelsonk@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/mchugh.jpg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mrs. Merika McHugh',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Gr. 9-12: Me-R',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43217',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('mchugha@pvpusd.net');
                                    },
                                    child: Text(
                                      'mchugha@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/shulman.jpeg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Ms. Heidi Shulman',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Gr. 9-12: S-Z',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43216',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('shulmanh@pvpusd.net');
                                    },
                                    child: Text(
                                      'shulmanh@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/lewis.jpg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mrs. Joanne Lewis',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Director, College & Career Cente',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: 318',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43618',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('lewisja@pvpusd.net');
                                    },
                                    child: Text(
                                      'lewisja@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/hoffman.jpg',
                      height: 110,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mrs. Teresa Hoffman',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Scholarship & Financial',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Aid Coordinator',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43347',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('hoffmant@pvpusd.net');
                                    },
                                    child: Text(
                                      'hoffmant@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 230,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/babcock.jpeg',
                      height: 167,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Megan Babcock',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Sage Therapist',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Sage Therapist',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Associate Marriage and',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Family Therapist #124801',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43215',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('babcockm@pvpusd.net');
                                    },
                                    child: Text(
                                      'babcockm@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'To schedule an appointment',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.topCenter),
                                    onPressed: _launchURL,
                                    child: Text(
                                      'https://forms.gle/NHsPEWVF4U23ihgD6',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
            ),
          ),
          SizedBox(
            child: Card(
              child: Container(
                height: 250,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/shurtleff.jpg',
                      height: 83,
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Jodie Shurtleff',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.red,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Student Support Specialist',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Sage Therapist',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Room: Counseling Office',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Associate Marriage and',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Text(
                                  'Family Therapist #124801',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.redAccent,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Ext: 43213',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center),
                                    onPressed: () {
                                      _sendMail('shurtleffj@pvpusd.net');
                                    },
                                    child: Text(
                                      'shurtleffj@pvpusd.net',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'To schedule an appointment',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.topCenter),
                                    onPressed: _launchURL,
                                    child: Text(
                                      'https://forms.gle/NHsPEWVF4U23ihgD6',
                                      style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.redAccent,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).canvasColor,
              elevation: 8,
              margin: EdgeInsets.all(5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
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
                        pageBuilder: (context, animation1, animation2) => home(),
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
                        pageBuilder: (context, animation1, animation2) => calendar(),
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

_sendMail(String m) async {
  var uri = 'mailto:$m';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

_call(String c) async {
  var uri = 'tel:$c';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not call to $uri';
  }
}

void _launchURL() async {
  const url = 'https://forms.gle/NHsPEWVF4U23ihgD6';
  if ((defaultTargetPlatform == TargetPlatform.iOS) ||
      (defaultTargetPlatform == TargetPlatform.android)) {
    if (Platform.isAndroid) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    if (Platform.isIOS) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  } else if ((defaultTargetPlatform == TargetPlatform.linux) ||
      (defaultTargetPlatform == TargetPlatform.macOS) ||
      (defaultTargetPlatform == TargetPlatform.windows)) {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
