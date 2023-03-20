import 'package:ccbyalu/myrooms.dart';
import 'package:ccbyalu/rooms.dart';
import 'package:flutter/material.dart';
import 'addevent.dart';
import 'events.dart';
import 'home.dart';
import 'profile.dart';
import 'rooms.dart';

class BookPage extends StatefulWidget {
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
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
        leading: Icon(Icons.map, color: Colors.white),
        title: Text('Burundi Room', textAlign: TextAlign.center),
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
          children: [
            Text(
              'Start Date and Time',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select a date and time',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Duration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Radio(value: true, groupValue: true, onChanged: null),
                Text('15 mins'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('30 mins'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('45 mins'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('1 hour'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Locations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Radio(value: true, groupValue: true, onChanged: null),
                Text('ALU CAMPUS'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('ALU HUBS'),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyRoom())),
                child: Text('Book'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff022d42),

                  // set the background color of the button
                ),
              ),
            ),
          ],
        ),
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
