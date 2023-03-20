import 'package:flutter/material.dart';
import 'dart:async';
import 'addevent.dart';
import 'event.dart';
import 'home.dart';
import 'notifications.dart';
import 'profile.dart';
import 'rooms.dart';

class Events extends StatefulWidget {
  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final List<Widget> pages = [
    ProfilePage(),
    Room(),
    Home(),
    Events(),
    AddEventPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/img_ellipse756_157x375.png',
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.12,
              left: MediaQuery.of(context).size.width * 0.25,
              child: Text(
                'Events Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.blueGrey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Cabin',
                    fontSize: 30.0),
              ),
            ),
          ]),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/img_kisspngchinab.png',
              ),
              title: Text('Fireside Chat '),
              subtitle:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(children: [
                  Icon(
                    Icons.map,
                    color: Color(0xff022d42),
                  ),
                  Text('Burundi Room, ALU'),
                ]),
                Text(
                  '12:30 - 1:30',
                  textAlign: TextAlign.left,
                ),
              ]),

              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventPage()),
                );
              },

              // Add your content here
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/img_kisspngchinab.png',
              ),
              title: Text('Fireside Chat '),
              subtitle:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(children: [
                  Icon(
                    Icons.map,
                    color: Color(0xff022d42),
                  ),
                  Text('Burundi Room, ALU'),
                ]),
                Text(
                  '12:30 - 1:30',
                  textAlign: TextAlign.left,
                ),
              ]),

              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventPage()),
                );
              },

              // Add your content here
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/img_kisspngchinab.png',
              ),
              title: Text('Fireside Chat '),
              subtitle:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(children: [
                  Icon(
                    Icons.map,
                    color: Color(0xff022d42),
                  ),
                  Text('Burundi Room, ALU'),
                ]),
                Text(
                  '12:30 - 1:30',
                  textAlign: TextAlign.left,
                ),
              ]),

              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventPage()),
                );
              },

              // Add your content here
            ),
          ),
          SizedBox(height: 100),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          // Navigates to the corresponding page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pages[index]),
          );
        },
        selectedItemColor: Color(0xff022d42),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Color(0xff022d42)),
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xff022d42)),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room, color: Color(0xff022d42)),
            label: 'Rooms',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff022d42)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Color(0xff022d42)),
            label: 'View Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xff022d42)),
            label: 'Add Events',
          ),
        ],
      ),
    );
  }
}
