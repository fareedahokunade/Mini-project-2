import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'logo': 'assets/images/alu.png',
      'title': 'ALU CAMPUS',
      'subtitle': 'Maintenance Update',
      'description':
          'The Enterprise Commons is closed for elevator maintenance.',
      'time': '3:45 PM',
      'date': 'Today',
    },
    {
      'logo': 'assets/images/alu.png',
      'title': 'ALU CAMPUS',
      'subtitle': 'Maintenance Update',
      'description':
          'The Enterprise Commons is closed for elevator maintenance.',
      'time': '9:14 PM',
      'date': 'Today',
    },
    {
      'logo': 'assets/images/alu.png',
      'title': 'ALU HUBS',
      'subtitle': 'Maintenance Update',
      'description':
          'The Enterprise Commons is closed for elevator maintenance.',
      'time': '3:45 PM',
      'date': 'Yesterday',
    },
    {
      'logo': 'assets/images/alu.png',
      'title': 'ALU CAMPUS',
      'subtitle': 'Maintenance Update',
      'description':
          'The Enterprise Commons is closed for elevator maintenance.',
      'time': '3:45 PM',
      'date': '2 days',
    },
    {
      'logo': 'assets/images/alu.png',
      'title': 'ALU CAMPUS',
      'subtitle': 'Maintenance Update',
      'description':
          'The Enterprise Commons is closed for elevator maintenance.',
      'time': '3:45 PM',
      'date': 'Today',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff022d42),
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              notifications[index]['logo'],
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            title: Text(notifications[index]['title']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notifications[index]['subtitle']),
                Text(
                  notifications[index]['description'],
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(notifications[index]['time']),
                Text(
                  notifications[index]['date'],
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
