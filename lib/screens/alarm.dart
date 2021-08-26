import 'package:flutter/material.dart';

class Alarm {
  final name;
  final day;
  final time;

  Alarm({@required this.name, @required this.day, @required this.time});
}

Widget AlarmScreen(BuildContext context) {
  List<Alarm> alarmList = [
    Alarm(name: "Morning", day: "Mon-Fri", time: "05:00 AM"),
    Alarm(name: "Office", day: "Mon-Sat", time: "09:00 AM"),
    Alarm(name: "Evening", day: "Mon-Sun", time: "12:00 PM"),
    Alarm(name: "Dinner", day: "Mon-Sun", time: "09:00 PM"),
  ];

  return Container(
    margin: EdgeInsets.all(10.0),
    child: ListView(
      children: alarmList.map((alarm) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueGrey.shade200,
                      Colors.blueGrey.shade400,
                      Colors.blueGrey.shade600,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2.0,
                    ),
                  ]),
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            alarm.name,
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.blueGrey.shade200,
                      ),
                    ],
                  ),
                  Text(
                    alarm.day,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        alarm.time,
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20.0,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
