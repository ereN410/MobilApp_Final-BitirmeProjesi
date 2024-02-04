import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  final Color titleColor;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.onTap,
    this.titleColor = Colors.white, // Varsayılan başlık rengi beyaz
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            icon,
            SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "X",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    MenuItem(
                      title: "Accounts",
                      icon: Icon(
                        Icons.account_circle,
                        size: 20,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      titleColor: Colors.white, // Başlık rengini belirle
                    ),
                    Divider(color: Colors.white, height: 1),
                    MenuItem(
                      title: "Language",
                      icon: Icon(
                        Icons.language,
                        size: 20,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      titleColor: Colors.white, // Başlık rengini belirle
                    ),
                    Divider(color: Colors.white, height: 1),
                    MenuItem(
                      title: "Notification",
                      icon: Icon(
                        Icons.notifications_on,
                        size: 20,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      titleColor: Colors.white, // Başlık rengini belirle
                    ),
                    Divider(color: Colors.white, height: 1),
                    MenuItem(
                      title: "Privacy",
                      icon: Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      titleColor: Colors.white, // Başlık rengini belirle
                    ),
                    Divider(color: Colors.white, height: 1),
                    MenuItem(
                      title: "Appearance",
                      icon: Icon(
                        Icons.remove_red_eye,
                        size: 20,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      titleColor: Colors.white, // Başlık rengini belirle
                    ),
                    Divider(color: Colors.white, height: 1),
                    SizedBox(height: 100),
                  ],
                ),
              ),
              Text(
                "Version: 4.7.2",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
