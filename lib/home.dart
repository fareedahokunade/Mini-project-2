import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ccbyalu/addevent.dart';
import 'package:ccbyalu/event.dart';
import 'package:ccbyalu/profile.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'book.dart';
import 'events.dart';
import 'notifications.dart';
import 'rooms.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [
    ProfilePage(),
    Room(),
    Home(),
    Events(),
    AddEventPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
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
              top: 50,
              left: 160,
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(shadows: [
                  Shadow(
                    color: Colors.blueGrey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], color: Colors.white, fontFamily: 'Cabin', fontSize: 15.0),
              ),
            ),
            Positioned(
              top: 70,
              left: 160,
              child: Text(
                'Aimar M.',
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
                    fontSize: 15.0),
              ),
            ),
            Positioned(
              top: 100,
              left: 160,
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage('assets/images/img_journalism1.png'),
              ),
            ),
            Positioned(
                top: 30,
                right: 20,
                child: IconButton(
                  icon: Icon(Icons.notification_add),
                  color: Colors.white,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  ),
                )),
          ]),
          Container(
            width: 200,
            alignment: Alignment.center,
            child: Text(
              'Book a pod with ease',
              textAlign: TextAlign.center,
              style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xffbeddec), // Set the background color
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                          20) // Make the container circular
                      ),
                  // Handle button press

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookPage()),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white, // Set the background color
                              shape: BoxShape
                                  .circle, // Make the container circular
                            ),
                            child: Image.asset(
                              "assets/images/img_icons8door481.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            "Book a room",
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )),
              Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xffbeddec), // Set the background color
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                          20) // Make the container circular
                      ),
                  // Handle button press
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddEventPage()),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white, // Set the background color
                              shape: BoxShape
                                  .circle, // Make the container circular
                            ),
                            child: Image.asset(
                              "assets/images/img_icons8tearoffcalendar48.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            "Add an Event",
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            alignment: Alignment.centerLeft,
            child: Text(
              'Events',
              textAlign: TextAlign.left,
              style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/img_kisspngchinab.png',
              ),
              title: Text('Fireside Chat '),
              subtitle: Text('Burundi Room, ALU'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Handle item tap here
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
