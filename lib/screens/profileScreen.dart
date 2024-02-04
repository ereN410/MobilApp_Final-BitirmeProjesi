import 'package:flutter/material.dart';
import '../widgets/menuItem.dart';
import '../widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Color.fromARGB(255, 10, 10, 40),
              Color.fromARGB(255, 10, 10, 37),
              const Color.fromARGB(255, 10, 10, 10),
              const Color.fromARGB(255, 10, 10, 10),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              ProfileItem(
                avatar: 'assets/images/1.jpeg',
                name: "Eren Günal",
                nameColor: Colors.white,
              ),
              Divider(
                color: Colors.white,
                height: 1,
              ),
              MenuItem(
                icon: Icon(Icons.email, color: Colors.white),
                title: "x@gmail.com",
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
                height: 1,
              ),
              MenuItem(
                icon: Icon(Icons.phone, color: Colors.white),
                title: "+90 506 022 30 84",
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
                height: 1,
              ),
              MenuItem(
                icon: Icon(Icons.topic, color: Colors.white),
                title: "Cybersecurity",
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
                height: 1,
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(140, 50),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 8),
                    Text("Go Back  ", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
