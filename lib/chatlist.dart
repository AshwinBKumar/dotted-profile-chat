import 'package:flutter/material.dart';

List<Map<String, String>> chatList = [
  {
    'title': 'Ashwin',
    'subtitle': 'Hello',
    'trailing': 'now',
    'image': 'assets/images/goat-got-swag.jpg'
  },
   {
    'title': 'Abdullh',
    'subtitle': 'Hello World',
    'trailing': '6:49',
    'image': 'assets/images/goat-got-swag.jpg'
  },
   {
    'title': 'Sreejith',
    'subtitle': 'Hai ',
    'trailing': 'now',
    'image': 'assets/images/goat-got-swag.jpg'
  },
];

class Chatlist extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final String backgroundImage;

  Chatlist(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.only(left: 20, top: 25), children: [
        Text(
          "Friends",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Mens.jpg"),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Text(trailing),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(backgroundImage),
          ),
          title: Text("Gabriella"),
          subtitle: Text("I saw it clearly and mig..."),
          trailing: Text("2:30"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Groups",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/goat-got-swag.jpg"),
          ),
          title: Text("Jakarta Fair"),
          subtitle: Text("Why does everyone ca..."),
          trailing: Text("11:11"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/glass3.webp"),
          ),
          title: Text("Angga"),
          subtitle: Text("Here here we can go..."),
          trailing: Text("7:11"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/sp1.webp"),
          ),
          title: Text("Bentley"),
          subtitle: Text("The car which does not..."),
          trailing: Text("7:11"),
        ),
      ]),
    );
  }
}
