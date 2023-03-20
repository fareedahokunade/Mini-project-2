import 'package:ccbyalu/book.dart';
import 'package:ccbyalu/filter.dart';
import 'package:ccbyalu/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'addevent.dart';
import 'events.dart';
import 'notifications.dart';
import 'profile.dart';

class Room extends StatefulWidget {
  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
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
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/img_ellipse756_157x375.png',
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.12,
              left: MediaQuery.of(context).size.width * 0.23,
              child: Text(
                'Available Rooms',
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
          Container(
              // set the background color of the container
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.filter_alt_outlined,
                    color:
                        Color(0xff022d42)), // specify the icon to be displayed
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FilterPage()),
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookPage()),
                        );
                      },
                      child: Card(
                        color: Color(0xff022d42),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('$index',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('People',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.map, color: Colors.white),
                                    Text(
                                      'Burundi Room',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ));
              }),
            ),
          )
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
