import 'package:application/appBarController.dart';
import 'package:application/sns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar.dart';
import 'menu.dart';

class home extends StatelessWidget {
  CalendarFormat format = CalendarFormat.week;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay = DateTime.now();
  List<Image> ImageList = [
    Image.asset('assets/school1.jpg'),
    Image.asset('assets/school2.jpg'),
    Image.asset('assets/school3.jpg'),
    Image.asset('assets/school4.JPG'),
    Image.asset('assets/school5.jpg'),
    Image.asset('assets/school6.JPG'),
    Image.asset('assets/school7.jpg'),
    Image.asset('assets/school8.jpg'),
    Image.asset('assets/school9.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      endDrawer: menu(),
      appBar: const NewBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: [0, 1, 2, 3, 4, 5, 6, 7, 8]
                    .map((i) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              ImageList[i],
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            flex: 2,
          ),
          /*Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: 400,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.black, width: 3.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'News $i',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20.0),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            flex: 2,
          ),*/
          Flexible(
            child: Container(
              height: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2028, 4, 3),
                  focusedDay: focusedDay,
                  calendarFormat: format,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronVisible: false,
                    rightChevronVisible: false,
                    titleTextStyle: TextStyle(
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          Offset(0, 20),
                          Offset(400, 20),
                          <Color>[
                            Color(0xfff1e2e2),
                            Color(0xffe51313),
                          ],
                        ),
                      fontSize: 20,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1.5,
                    ),
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                      fontSize: 15,
                      letterSpacing: 1.5,
                    ),
                  ),
                  calendarStyle: const CalendarStyle(
                    weekendTextStyle: TextStyle(
                      color: Colors.red,
                    ),
                    defaultTextStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                    todayTextStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                    isTodayHighlighted: true,
                  ),
                ),
              ),
            ),
            flex: 1,
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
                  color: Theme.of(context).focusColor,
                  icon: const Icon(Icons.home),
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
                  color: Theme.of(context).iconTheme.color,
                  icon: const Icon(Icons.menu_outlined),
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
