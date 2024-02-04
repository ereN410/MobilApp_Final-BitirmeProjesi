import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "X",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                const Color.fromARGB(255, 14, 14, 14),
                const Color.fromARGB(255, 7, 7, 7),
                const Color.fromARGB(255, 11, 11, 11),
                const Color.fromARGB(255, 10, 10, 10),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Color.fromARGB(255, 10, 9, 9),
              Color.fromARGB(255, 10, 9, 9),
              Color.fromARGB(255, 10, 9, 9),
              Color.fromARGB(255, 10, 9, 9),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MenuItem(
                title: "Premium Application",
                icon: Icon(
                  Icons.workspace_premium_outlined,
                  size: 50,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/premium');
                },
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(140, 50),
                  backgroundColor: Color.fromARGB(255, 15, 15, 15),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Go Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Version: 4.7.2",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 240, 240),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onTap;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          icon,
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
