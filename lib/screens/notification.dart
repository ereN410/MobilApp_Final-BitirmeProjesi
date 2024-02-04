import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bildirimler'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Color.fromARGB(255, 19, 19, 19),
              Color.fromARGB(255, 10, 10, 10),
              Color.fromARGB(255, 20, 20, 20),
              Color.fromARGB(255, 10, 10, 10),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Bildirim Ekranı',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
