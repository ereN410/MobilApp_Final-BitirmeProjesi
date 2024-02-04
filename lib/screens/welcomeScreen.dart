import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "Welcome To X",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of yellow
                Color.fromARGB(255, 6, 6, 6), // Dark color instead of red
                const Color.fromARGB(
                    255, 37, 36, 36), // Dark color instead of indigo
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of teal
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                Colors.black, // Dark color instead of yellow
                Colors.black, // Dark color instead of red
                Colors.black, // Dark color instead of indigo
                Colors.black, // Dark color instead of teal
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.white), // White button
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Row(
                      children: [
                        Icon(Icons.login_rounded,
                            color: Colors.black), // Black icon
                        SizedBox(width: 20, height: 20),
                        Text(
                          "  Login      ",
                          style: TextStyle(color: Colors.black), // Black text
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.white), // White button
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.app_registration,
                            color: Colors.black), // Black icon
                        SizedBox(width: 20, height: 20),
                        Text(
                          " Register   ",
                          style: TextStyle(color: Colors.black), // Black text
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.white), // White button
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.support_agent_rounded,
                            color: Colors.black), // Black icon
                        SizedBox(width: 10),
                        Text(
                          "  Support     ",
                          style: TextStyle(color: Colors.black), // Black text
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Version: 4.7.2",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 250,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
