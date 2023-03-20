import 'package:ccbyalu/myrooms.dart';
import 'package:ccbyalu/profile.dart';
import 'package:ccbyalu/rooms.dart';
import 'package:flutter/material.dart';
import 'addevent.dart';
import 'events.dart';
import 'home.dart';
import 'rooms.dart';

class EventPage extends StatefulWidget {
  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
        elevation: 0.0,
        title: Text('FireSide Chat', textAlign: TextAlign.center),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Divider(
                height: 15,
                endIndent: 0,
              ),
              Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Dear Leaders\!Allow me to invite you to the event scheduled for tomorrow 8th Feb. @ 1:30 CAT. As we indicated earlier, we know that being academically good is fine, and so is creating a wonderful mission, but it is great to align the two. Best Wishes,Patrick.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Date:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '02/04/2023 1:30PM',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Icon(Icons.map, color: Color(0xff022d42)),
                Text(
                  'Burundi Room',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff022d42),
                      fontSize: 20),
                )
              ]),
              SizedBox(height: 16.0),
              Divider(
                height: 15,
                endIndent: 0,
              ),
            ]),
      ),
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
