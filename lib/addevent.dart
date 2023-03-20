import 'package:ccbyalu/events.dart';
import 'package:ccbyalu/rooms.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'rooms.dart';

class AddEventPage extends StatefulWidget {
  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  'Add An Event',
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
            SizedBox(height: 8.0),
            Text(
              'Title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter event title',
              ),
            ),
            Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter event description',
              ),
            ),
            Text(
              'Location',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
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
            Text(
              'Room',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Row(
              children: [
                Radio(value: true, groupValue: true, onChanged: null),
                Text('Malawi'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('Burundi'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('Chinua Achebe'),
              ],
            ),
            Row(
              children: [
                Radio(value: false, groupValue: true, onChanged: null),
                Text('Learning Commons'),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Events()),
                  );
                },
                child: Text('Upload'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff022d42),
                ),
              ),
            ),
            SizedBox(height: 16.0),
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
