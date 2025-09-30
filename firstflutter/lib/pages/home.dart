import 'package:firstflutter/pages/dashboard.dart';
import 'package:firstflutter/widgets/button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Dashboard()));
              },
            )
          ],
        ),
      ),
    );
  }
}