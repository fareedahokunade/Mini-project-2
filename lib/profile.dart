import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'addevent.dart';
import 'events.dart';
import 'home.dart';
import 'rooms.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      appBar: AppBar(
        backgroundColor: Color(0xff022d42),
        title: Text('Profile'),
      ),
      body: Column(children: [
        ListTile(
          leading: Image.asset(
            'assets/images/alu.png',
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          title: Text('ALU CAMPUS'),
          subtitle: Text(
            'm.aimar@alustudent.com',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Aimar Cyusa Muhirwa'),
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('My Bookings'),
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.help_center),
          title: Text('Help'),
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          leading: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => FirebaseAuth.instance.signOut()),
          title: Text('Sign Out'),
        ),
        Divider(
          height: 10,
        ),
      ]),
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
