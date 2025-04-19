import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:new_ui/chatscreen.dart';

class UIpage extends StatefulWidget {
  const UIpage({super.key});

  @override
  State<UIpage> createState() => _UIpageState();
}

class _UIpageState extends State<UIpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 135, 244),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 13, 149, 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.add_outlined, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: [10, 15], //dash length and space adjust cheyyan
                  strokeWidth: 2,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/lady.jpg"),
                  ),
                ),
              ),
            ),
            Text(
              "Sabrina Carpenter",
              style: TextStyle(
                  color: Colors.white, fontSize: 16, letterSpacing: 1),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Travel Freelancer",
              style: TextStyle(
                  color: const Color.fromARGB(255, 196, 193, 193),
                  fontSize: 13),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: ListView(
                    padding: EdgeInsets.only(left: 20, top: 25),
                    children: [
                      Text(
                        "Friends",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Chatscreen(
                                    title: "Joshuer",
                                  )));
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/Mens.jpg"),
                        ),
                        title: Text("Joshuer"),
                        subtitle: Text("Sorry.you're not my ty..."),
                        trailing: Text("Now"),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Chatscreen(
                                    title: "Gabriella",
                                  )));
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/kid.jpg"),
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
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Chatscreen(
                                    title: "Jakarta Fair",
                                  )));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/goat-got-swag.jpg"),
                        ),
                        title: Text("Jakarta Fair"),
                        subtitle: Text("Why does everyone ca..."),
                        trailing: Text("11:11"),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Chatscreen(
                                    title: "Angga",
                                  )));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/glass3.webp"),
                        ),
                        title: Text("Angga"),
                        subtitle: Text("Here here we can go..."),
                        trailing: Text("7:11"),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Chatscreen(
                                    title: "Bentley",
                                  )));
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/sp1.webp"),
                        ),
                        title: Text("Bentley"),
                        subtitle: Text("The car which does not..."),
                        trailing: Text("7:11"),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
