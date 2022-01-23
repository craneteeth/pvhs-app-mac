import 'package:application/sns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:basic_utils/basic_utils.dart';

import 'home.dart';
import 'menu.dart';

class calendar extends StatefulWidget {
  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay = DateTime.now();
  static List<Image> bell = [
    Image.asset('assets/regular.png'),
    Image.asset('assets/lateStart.png'),
    Image.asset('assets/minimum.png'),
    Image.asset('assets/minimumAll.png'),
    Image.asset('assets/final.png'),
    Image.asset('assets/extra.png'),
    Image.asset('assets/allPeriod.png'),
  ];
  Map<DateTime, List<Event>> schedule = {
    DateTime.utc(2022, 1, 3): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 5): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 1, 7): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 11): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 13): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 18): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 20): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 24): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 26): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 1, 28): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 1): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 3): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 7): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 9): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 2, 11): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 15): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 17): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 22): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 24): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 28): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 2): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 3, 4): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 8): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 10): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 14): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 16): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 3, 18): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 22): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 24): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 4): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 6): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 4, 8): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 12): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 14): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 18): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 20): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 4, 22): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 26): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 28): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 2): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 4): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 5, 6): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 10): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 12): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 16): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 18): [Event('A day'), Event('late start')],
    DateTime.utc(2022, 5, 20): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 24): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 26): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 31): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 6, 2): [Event('A day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 4): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 6): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 10): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 12): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 1, 14): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 19): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 1, 21): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 25): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 27): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 1, 31): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 2): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 2, 4): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 8): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 10): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 14): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 16): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 2, 18): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 2, 23): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 2, 25): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 1): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 3): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 7): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 9): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 3, 11): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 15): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 17): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 21): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 3, 23): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 3, 25): [Event('B day'), Event('minimum day block schedule')],
    DateTime.utc(2022, 4, 5): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 7): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 11): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 13): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 4, 15): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 19): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 21): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 25): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 4, 27): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 4, 29): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 3): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 5): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 9): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 11): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 5, 13): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 17): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 19): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 23): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 5, 25): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 5, 27): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 6, 1): [Event('B day'), Event('late start')],
    DateTime.utc(2022, 6, 3): [Event('B day'), Event('regular bell schedule')],
    DateTime.utc(2022, 6, 6): [Event('0 period final'), Event('all period day')],
    DateTime.utc(2022, 6, 7): [Event('1,2 period final'), Event('final day')],
    DateTime.utc(2022, 6, 8): [Event('4,3 period final'), Event('final day')],
    DateTime.utc(2022, 6, 9): [Event('5,6 period final'), Event('final day')],
    DateTime.utc(2022, 1, 17): [Event('no school')],
    DateTime.utc(2022, 2, 21): [Event('no school')],
    DateTime.utc(2022, 5, 30): [Event('no school')],
    DateTime.utc(2022, 3, 28): [Event('spring break')],
    DateTime.utc(2022, 3, 29): [Event('spring break')],
    DateTime.utc(2022, 3, 30): [Event('spring break')],
    DateTime.utc(2022, 3, 31): [Event('spring break')],
    DateTime.utc(2022, 4, 1): [Event('spring break')],
  };
  List<Event> _getEventsForDay(DateTime day) {
    return schedule[day] ?? [];
  }
  @override
  Widget build(BuildContext context) {
    var _styleType = Theme.of(context).textTheme.headline2!;
    return Scaffold(
      endDrawer: const menu(),
      appBar: const NewBar(),
      body: ListView(
        children: [
          TableCalendar(
            eventLoader: _getEventsForDay,
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2028, 4, 3),
            focusedDay: focusedDay,
            calendarFormat: format,
            selectedDayPredicate: (day) => isSameDay(selectedDay, day),
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
            },
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).backgroundColor,
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
            calendarStyle: CalendarStyle(
                markerSize: 0,
                weekendTextStyle: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Color(0xfffa5c5c),
                  fontSize: 15,
                ),
                defaultTextStyle: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              leftChevronIcon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Theme.of(context).backgroundColor,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.red,
              ),
              titleTextStyle: _styleType,/*TextStyle(
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
              ),*/
            ),
          ),
          ..._getEventsForDay(focusedDay).map(
            (Event event) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  event.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    letterSpacing: 1.0,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.black54,
                selectedTileColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: false,
              ),
              items: [0, 1, 2, 3, 4, 5, 6].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: bell[i],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
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
                  color: Theme.of(context).focusColor,
                  icon: const Icon(Icons.event_note),
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
