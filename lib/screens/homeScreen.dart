import 'package:flutter/material.dart';
import 'package:navigation_app/screens/postsSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Tüm arka planı siyah yapın
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Arka plan rengini şeffaf yapın
        title: Text(
          "X",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                Color.fromARGB(255, 2, 2, 0),
                const Color.fromARGB(255, 5, 1, 0),
                const Color.fromARGB(255, 0, 1, 7),
                Color.fromARGB(255, 10, 10, 10),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ProfileItem(
              avatar: 'assets/images/1.jpeg',
              name: "Eren GÜNAL",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            Expanded(
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    title: "Home Screen",
                    icon: Icon(
                      Icons.home,
                      size: 18,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    backgroundColor:
                        Colors.black, // Arka plan rengini siyah yapın
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    icon: Icon(
                      Icons.info_outline,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    title: "About Us",
                    backgroundColor:
                        Colors.black, // Arka plan rengini siyah yapın
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    title: "Shop",
                    icon: Icon(Icons.shop_2_outlined,
                        size: 20, color: Colors.white),
                    onTap: () {
                      Navigator.pushNamed(context, '/shop');
                    },
                    backgroundColor:
                        Colors.black, // Arka plan rengini siyah yapın
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    title: "Contact us",
                    icon: Icon(
                      Icons.message,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    backgroundColor:
                        Colors.black, // Arka plan rengini siyah yapın
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    icon: Icon(
                      Icons.settings,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    title: "Settings",
                    backgroundColor:
                        Colors.black, // Arka plan rengini siyah yapın
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    icon: Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/chats');
                    },
                    title: "Chats",
                    backgroundColor: Colors.black,
                  ),
                  Divider(
                    color: Colors.white,
                    height: 1,
                  ),
                  MenuItem(
                    icon: Icon(Icons.logout_outlined, color: Colors.white),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/welcome', (route) => false);
                    },
                    title: "Logout",
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: PostsSection(),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;

  const ProfileItem({
    Key? key,
    this.onTap,
    required this.name,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                    radius: 30,
                  ),
                ),
              ),
              SizedBox(width: 7),
              Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;
  final Color? backgroundColor;

  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              icon,
              SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
