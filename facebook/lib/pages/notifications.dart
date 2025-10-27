import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.white,
        actions: const[
          Icon(Icons.more_horiz),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Today",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof1.jpg'),
            ),
            title: Text('Jona liked your post.'),
            subtitle: Text('2 hrs ago'),
            trailing: Icon(Icons.more_horiz),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof2.jpg'),
            ),
            title: Text('Juan commented on your photo.'),
            subtitle: Text('3 hrs ago'),
            trailing: Icon(Icons.more_horiz),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof3.jpg'),
            ),
            title: Text('Erika sent you a friend request.'),
            subtitle: Text('5 hrs ago'),
            trailing: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}