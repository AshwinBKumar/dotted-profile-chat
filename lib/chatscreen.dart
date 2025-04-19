import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {final String title;
  const Chatscreen({super.key, required this.title});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title,style: ,),
      ),
    );
  }
}
